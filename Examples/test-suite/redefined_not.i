%module redefined_not

// These should not emit a 'Redefinition of identifier' warning
%inline %{
typedef unsigned int my_size_t;
namespace Std {
  using ::my_size_t;
}
using Std::my_size_t;
typedef unsigned int my_size_t;
using Std::my_size_t;
%}

