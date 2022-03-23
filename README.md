# 设计模式学习笔记

## 面向对象

- 封装 (Encapsulation)。封装也叫信息隐藏或数据访问保护。类通过暴露有限的访问接口，授权外部仅能通过类提供的方式（函数）来访问内部信息或数据。
- 抽象（Abstraction）。隐藏方法的具体实现，让调用者只需要关心方法提供了哪些功能，并不需要知道这些功能是如何实现的。
- 继承（Inheritance）。表示类之间的 is-a 关系。
- 多态（Polymorphism）。多态是指 子类可以替代父类，在实际的代码运行过程中，调用子类的方法实现。

## 抽象类 vs 接口

**抽象类**
- 不能被实例化，只能被继承
- 抽象类可以包含属性和方法。方法既可以包含代码实现，也可以不包含代码实现。不包含代码实现的方法叫抽象方法。
- 子类继承抽象类，必须实现抽象类中的所有抽象方法。

**接口**
- 接口不能包含属性
- 接口只能声明方法，不能包含代码实现
- 类实现接口的时候，必须实现接口中声明的所有方法


抽象类：is-a 关系，接口类：has-a 关系；抽象类更多为了代码复用，而接口更侧重于解耦。接口实现了约定和实现相分离，可以降低代码间的耦合性，提高代码的可扩展性。

## 基于抽象而非实现编程

越抽象、越顶层、越脱离具体某一实现的设计，越能提高代码的灵活性，越能应对未来的需求变化。封装不稳定的实现，暴露稳定的接口。

这里假设有一段上传图片到阿里云的代码。想想你会怎么写。

- 函数的命名不能暴露任何实现细节。比如，`uploadToAliyun()` 应该改为 `upload()`
- 封装具体的实现细节。比如，跟阿里云相关的特殊上传（下载）流程不应该暴露给调用者。我们对上传（下载）流程进行封装，对外提供一个包裹所有上传（下载）细节的方法，给调用者使用。
- 从实现类定义抽象的接口。具体的实现类都依赖统一的接口定义。
