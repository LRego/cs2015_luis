angular
  .module('projectileApp', [])
  .directive('projectile', function ($timeout) {
    return {
      restrict:'E',
      link:function (scope, element, attrs) {
        element.addClass('projectile');

        scope.$watch(attrs.x, function (x) {
          element.css('left', x + 'px');
        });
        scope.$watch(attrs.y, function (y) {
          element.css('top', y + 'px');
        });
      }
    };
  })
  .controller('ProjectileCtrl', function($scope, $timeout, $window) {
    $scope.init = function (event) {
      $scope.mouseclick = {
        mouse_X:event.offsetX,
        mouse_Y: event.offsetY
      };
      function createProjectile() {
        accelaration_x = Math.floor(Math.random() * 200) + 1;
        accelaration_x *= Math.floor(Math.random() * 2) == 1 ? 1 : -1;
        accelaration_y = Math.floor(Math.random() * 200) + 1;
        return {
          x: ($scope.mouseclick.mouse_X),
          y: ($scope.mouseclick.mouse_Y),
          velocity_x:accelaration_x,
          velocity_y:accelaration_y,
        };
      }
      $scope.shapes = [];
      $scope.shapes.push(createProjectile());
      animate($scope.shapes, $timeout);
    };
    function animate(shapes, $timeout, $window, $scope) {
      (function object() {
        var i;
        var bounce_effect = 0.8;
        var time_now = new Date().getTime();
        var projectile_size = 20;
        var max_height = $(window).height() - projectile_size;
        var max_width = $(window).width() - projectile_size;

        for (i = 0; i < shapes.length; i++) {
          var shape = shapes[i];
          var elapsed = (shape.timestamp || time_now) - time_now;

          shape.timestamp = time_now;
          shape.x = shape.x + (elapsed * shape.velocity_x / 100);
          shape.y = shape.y + (elapsed * shape.velocity_y / 100);

          if (shape.x > max_width) {
            shape.x = 2 * max_width - shape.x;
            shape.velocity_x = shape.velocity_x * -1;
          }
          if (shape.x < 0) {
            shape.x = 0;
            shape.velocity_x = shape.velocity_x * -1;
          }
          if (shape.y > max_height) {
            shape.y = max_height;
            shape.velocity_y = shape.velocity_y * -bounce_effect;
          }
          if (shape.y < 0) {
            shape.y = 0;
            shape.velocity_y = shape.velocity_y * -1;
          }
          if((shape.velocity_y = shape.velocity_y - 5) < 0 && shape.y > 0.97 * max_height) {
            shape.velocity_x = shape.velocity_x * 0.65;
          }
        }
        $timeout(object, 20);
      })();
    }
  });
