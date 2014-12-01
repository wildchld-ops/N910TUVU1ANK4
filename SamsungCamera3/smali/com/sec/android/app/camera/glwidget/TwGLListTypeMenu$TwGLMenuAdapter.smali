.class Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu$TwGLMenuAdapter;
.super Ljava/lang/Object;
.source "TwGLListTypeMenu.java"

# interfaces
.implements Lcom/sec/android/glview/TwGLList$Adapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TwGLMenuAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;


# direct methods
.method private constructor <init>(Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu$TwGLMenuAdapter;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu$TwGLMenuAdapter;-><init>(Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu$TwGLMenuAdapter;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->mResource:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    invoke-static {v0}, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->access$100(Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;)Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;->getNumberOfItems()I

    move-result v0

    return v0
.end method

.method public getView(ILcom/sec/android/glview/TwGLView;)Lcom/sec/android/glview/TwGLView;
    .locals 7

    if-nez p2, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu$TwGLMenuAdapter;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->mResource:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    invoke-static {v1}, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->access$100(Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;)Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;->getItem(I)Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getCommandId()I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu$TwGLMenuAdapter;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;

    # getter for: Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;
    invoke-static {v2}, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->access$200(Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;)Lcom/sec/android/app/camera/Camera;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu$TwGLMenuAdapter;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;

    # getter for: Lcom/sec/android/app/camera/MenuBase;->mGLParentView:Lcom/sec/android/glview/TwGLViewGroup;
    invoke-static {v3}, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->access$300(Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;)Lcom/sec/android/glview/TwGLViewGroup;

    move-result-object v3

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu$TwGLMenuAdapter;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;

    # getter for: Lcom/sec/android/app/camera/MenuBase;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;
    invoke-static {v6}, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->access$400(Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;)Lcom/sec/android/app/camera/MenuResourceDepot;

    move-result-object v6

    invoke-static {v1, v2, v3, v6}, Lcom/sec/android/app/camera/command/CommandBuilder;->buildCommand(ILcom/sec/android/app/camera/Camera;Lcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;)Lcom/sec/android/app/camera/command/MenuCommand;

    move-result-object v5

    if-eqz v5, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu$TwGLMenuAdapter;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/MenuBase;->getZorder()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v5, v1}, Lcom/sec/android/app/camera/command/MenuCommand;->setZOrder(I)V

    new-instance v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu$TwGLMenuAdapter;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;

    # getter for: Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;
    invoke-static {v1}, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->access$500(Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;)Lcom/sec/android/app/camera/Camera;

    move-result-object v1

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->LIST_ITEM_WIDTH:I
    invoke-static {}, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->access$600()I

    move-result v2

    int-to-float v2, v2

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->LIST_ITEM_HEIGHT:I
    invoke-static {}, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->access$700()I

    move-result v3

    int-to-float v3, v3

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/app/camera/glwidget/TwGLItem;-><init>(Lcom/sec/android/app/camera/Camera;FFLcom/sec/android/app/camera/resourcedata/MenuResourceBundle;Lcom/sec/android/app/camera/command/MenuCommand;I)V

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu$TwGLMenuAdapter;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->mList:Lcom/sec/android/glview/TwGLList;
    invoke-static {v1}, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->access$800(Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;)Lcom/sec/android/glview/TwGLList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->setOnTouchListener(Lcom/sec/android/glview/TwGLView$OnTouchListener;)V

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu$TwGLMenuAdapter;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->mList:Lcom/sec/android/glview/TwGLList;
    invoke-static {v1}, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->access$800(Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;)Lcom/sec/android/glview/TwGLList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->setOnKeyListener(Lcom/sec/android/glview/TwGLView$OnKeyListener;)V

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu$TwGLMenuAdapter;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/MenuBase;->getZorder()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->setZOrder(I)V

    :goto_0
    return-object v0

    :cond_0
    move-object v0, p2

    goto :goto_0
.end method

.method public reset()V
    .locals 0

    return-void
.end method
