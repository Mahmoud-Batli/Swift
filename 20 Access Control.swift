open class file { //Support access from outer model and can inheritance
    public var name = "A" //Support access from outer model
    internal var age = 10 //Default
    fileprivate var code = 3425 //Support access in scope of file
    private var degree = 50 //Support access in scope of class
}
