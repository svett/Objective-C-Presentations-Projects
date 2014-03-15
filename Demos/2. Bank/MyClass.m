@interface MyClass : NSObject
{
@private
    // Can only be accessed by instances of MyClass
    NSInteger _privateIvar1;
    NSString *_privateIvar2;
@protected // Default
    // Can only be accessed by instances of MyClass or MyClass's subclasses
    NSInteger _protectedIvar1;
    NSString *_protectedIvar2;
    @package // 64-bit only
    // Can be accessed by any object in the framework in which MyClass is defined
    NSInteger _packageIvar1;
    NSString *_packageIvar2;
@public // Never use it !
    // Can be accessed by any object
    NSInteger _publicVar1;
    NSString *_publicVar2;
}
