#  Code style

This is used to keep a proper code style throughout the whole project. They may seem arbitrary, and one style is not necessarily better than another. But they should be followed anyway.


## Naming

### Classes

The prefix TLA should be used for all classes and structs.

Good

    TLAObject
    TLAProgressBar
    
Bad

    ABCObject
    ProgressBar
    
### Categories / Extensions (Obj-C name?) 

They should have the class they are extending, a '+', and the extension name without this prefix as their filenames.

Good

    UIColor+ExtensionName.swift
    UIView+Animations.swift
    
Bad

    UIColor+TLAExtensionName.swift
    UIViewAnimations.swift

### Class variables

They should start with the _type_ and then the purpose.

Good

    @IBOutlet weak var labelTitle: TLALabel!
    var viewHeaderBorder: UIView
    var imageViewBottomRightCornerIcon: UIImageView
    
Bad

    var progressView: UIView 
    var border: UIView
    var images: UIImageView
    
Awknowleding something awkward here, 'progressView' probably sounds better than e.g. 'viewProgress'. In this case, 'viewProgressView' is the way to go. It keeps the 'progressView' but also contains the type in the beginning.

### Methods configuring views/cells/etc

Naming should be using _configure_. Avoid _setup_ and the likes. It should also include the type of the object we're configuring. 

Good

    func configureCell(with: someData)
    func configureView(with: someData)
    
Bad

    func setup(with: someData)
    func configure(with: someData)
    func setupView(with: someData)
    func prepareViewUI(with: someData)

Note that, as `UIViewControllers` are considered pure view objects, they are also to be configured as above. For example, note the 'View' and not 'ViewController' in the configure method

    let viewMontroller = UIViewController()
    let viewModel = ViewModel()
    viewController.configureView(viewModel)

### Delegate methods in UIViewControllers

> **WIP - Unsure**

As UIViewControllers are considered views, their purpose is to:

- Display information
- Handle input

As such, delegate methods that were the result of a user input should be named with 'didPress'. They should also send the touching UIViewController with the touch, in addition to any other parameters if needed. The reason is to make it clear in the delegate who sent the message.

> Note, the 'send the VC' is a result of building a previous version in Objective-C, where we do not make use of extension grouping per delegate. So it might be not useful. Do it anyway for now, though.

Good

    didPressSomeButton(fromController: TLASomeViewController)
    didPressSomeButton(fromController: TLASomeViewController, with: someData)
    
Bad

    didPressSomeButton() // No 'from:'
    pressedSomeButton(fromController: TLASomeViewControllr) // No 'didPress'
    
Unclear

    dataUpdated(fromController: TLASomeViewController, with: someData)

(The last one is unclear because I haven't yet done any 'notify' methods)

## Spacing '{'

Keep one space before a '{' bracket

Good

    class TLAMenuCoordinator: TLACoordinator {
    class Car {
    
Bad

    class TLAMenuCoordinator: TLACoordinator{
    class Car     {


## Positioning of '{'

The '{' bracket should be kept on the same line as the statement

Good

    class TLAMenuCoordinator: TLACoordinator {
    ...
    
    if 1==1 {
    ...
    
Bad

    class TLAMenuCoordinator: TLACoordinator 
    {
    ...
    
    if 1==1
    {
    ...


## Spacing in classes/extensions/structs

There should always be a space between the declaration and the content within it. For example:

Good

    class GoodClass {
    
        // Content
    
    }

Bad

    class BadClass {
        // Content
    }


## Extension usage for ...

### Protocols 

Extension should be used for separating protocol methods into e.g. UIViewControllers. The only reason for this is to increase the separation of code and to make each protocol have its own area. For example:

Good

    class ExampleTableViewClass {
    
        // Content
    
    }
    
    extension ExampleTableViewClass: UITableViewDelegate {
    
        // Content
        
    }
    
Bad

    class ExampleTableViewClass: UITableViewDelegate {
    
        // Content

    }
    

## Interface Builder item attributes setting

You should only ever set classes, constraints and the actual object in IB. All visuals must be set in code, through each objects `.theme` property. 

That means

- No 'center align this label'
- No 'let me change the color of this view real quickl'
- No 'this image view's contentMode should be aspect fit'

Again. Only set these through `.theme`. If there is no `TLASubclassView` for a specific type of view, you make one. **No exceptions!**
