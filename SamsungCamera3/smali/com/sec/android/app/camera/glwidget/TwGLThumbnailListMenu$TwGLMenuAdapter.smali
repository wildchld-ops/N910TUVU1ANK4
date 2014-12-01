.class Lcom/sec/android/app/camera/glwidget/TwGLThumbnailListMenu$TwGLMenuAdapter;
.super Ljava/lang/Object;
.source "TwGLThumbnailListMenu.java"

# interfaces
.implements Lcom/sec/android/glview/TwGLList$Adapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/glwidget/TwGLThumbnailListMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TwGLMenuAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/glwidget/TwGLThumbnailListMenu;


# direct methods
.method private constructor <init>(Lcom/sec/android/app/camera/glwidget/TwGLThumbnailListMenu;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailListMenu$TwGLMenuAdapter;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLThumbnailListMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/app/camera/glwidget/TwGLThumbnailListMenu;Lcom/sec/android/app/camera/glwidget/TwGLThumbnailListMenu$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailListMenu$TwGLMenuAdapter;-><init>(Lcom/sec/android/app/camera/glwidget/TwGLThumbnailListMenu;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailListMenu$TwGLMenuAdapter;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLThumbnailListMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLThumbnailListMenu;->mResource:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    invoke-static {v0}, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailListMenu;->access$100(Lcom/sec/android/app/camera/glwidget/TwGLThumbnailListMenu;)Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;->getNumberOfItems()I

    move-result v0

    return v0
.end method

.method public getView(ILcom/sec/android/glview/TwGLView;)Lcom/sec/android/glview/TwGLView;
    .locals 10

    const/4 v9, 0x0

    const/4 v2, 0x0

    const/4 v8, 0x1

    if-nez p2, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailListMenu$TwGLMenuAdapter;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLThumbnailListMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLThumbnailListMenu;->mResource:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    invoke-static {v1}, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailListMenu;->access$100(Lcom/sec/android/app/camera/glwidget/TwGLThumbnailListMenu;)Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;->getItem(I)Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    move-result-object v6

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailListMenu$TwGLMenuAdapter;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLThumbnailListMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLThumbnailListMenu;->mItemList:Landroid/util/SparseArray;
    invoke-static {v1}, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailListMenu;->access$200(Lcom/sec/android/app/camera/glwidget/TwGLThumbnailListMenu;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v6}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getCommandId()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/glwidget/TwGLModeItem;

    if-nez v0, :cond_0

    invoke-virtual {v6}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getCommandId()I

    move-result v1

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailListMenu$TwGLMenuAdapter;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLThumbnailListMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLThumbnailListMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;
    invoke-static {v3}, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailListMenu;->access$300(Lcom/sec/android/app/camera/glwidget/TwGLThumbnailListMenu;)Lcom/sec/android/app/camera/Camera;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailListMenu$TwGLMenuAdapter;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLThumbnailListMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLThumbnailListMenu;->mGLParentView:Lcom/sec/android/glview/TwGLViewGroup;
    invoke-static {v4}, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailListMenu;->access$400(Lcom/sec/android/app/camera/glwidget/TwGLThumbnailListMenu;)Lcom/sec/android/glview/TwGLViewGroup;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailListMenu$TwGLMenuAdapter;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLThumbnailListMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLThumbnailListMenu;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;
    invoke-static {v5}, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailListMenu;->access$500(Lcom/sec/android/app/camera/glwidget/TwGLThumbnailListMenu;)Lcom/sec/android/app/camera/MenuResourceDepot;

    move-result-object v5

    invoke-static {v1, v3, v4, v5}, Lcom/sec/android/app/camera/command/CommandBuilder;->buildCommand(ILcom/sec/android/app/camera/Camera;Lcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;)Lcom/sec/android/app/camera/command/MenuCommand;

    move-result-object v7

    if-eqz v7, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailListMenu$TwGLMenuAdapter;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLThumbnailListMenu;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/MenuBase;->getZorder()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v7, v1}, Lcom/sec/android/app/camera/command/MenuCommand;->setZOrder(I)V

    new-instance v0, Lcom/sec/android/app/camera/glwidget/TwGLModeItem;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailListMenu$TwGLMenuAdapter;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLThumbnailListMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLThumbnailListMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;
    invoke-static {v1}, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailListMenu;->access$600(Lcom/sec/android/app/camera/glwidget/TwGLThumbnailListMenu;)Lcom/sec/android/app/camera/Camera;

    move-result-object v1

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLThumbnailListMenu;->THUMBNAIL_ITEM_WIDTH:I
    invoke-static {}, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailListMenu;->access$700()I

    move-result v3

    int-to-float v4, v3

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLThumbnailListMenu;->THUMBNAIL_ITEM_HEIGHT:I
    invoke-static {}, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailListMenu;->access$800()I

    move-result v3

    int-to-float v5, v3

    move v3, v2

    invoke-direct/range {v0 .. v8}, Lcom/sec/android/app/camera/glwidget/TwGLModeItem;-><init>(Lcom/sec/android/app/camera/Camera;FFFFLcom/sec/android/app/camera/resourcedata/MenuResourceBundle;Lcom/sec/android/app/camera/command/MenuCommand;I)V

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLThumbnailListMenu;->THUMBNAIL_TYPE_BUTTON_MARGIN:I
    invoke-static {}, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailListMenu;->access$900()I

    move-result v1

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLThumbnailListMenu;->THUMBNAIL_TYPE_BUTTON_MARGIN:I
    invoke-static {}, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailListMenu;->access$900()I

    move-result v2

    invoke-virtual {v0, v1, v9, v2, v9}, Lcom/sec/android/app/camera/glwidget/TwGLModeItem;->setMargin(IIII)V

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailListMenu$TwGLMenuAdapter;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLThumbnailListMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLThumbnailListMenu;->mMute:Z
    invoke-static {v1}, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailListMenu;->access$1000(Lcom/sec/android/app/camera/glwidget/TwGLThumbnailListMenu;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLModeItem;->setMute(Z)V

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailListMenu$TwGLMenuAdapter;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLThumbnailListMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLThumbnailListMenu;->mList:Lcom/sec/android/glview/TwGLList;
    invoke-static {v1}, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailListMenu;->access$1100(Lcom/sec/android/app/camera/glwidget/TwGLThumbnailListMenu;)Lcom/sec/android/glview/TwGLList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLModeItem;->setOnTouchListener(Lcom/sec/android/glview/TwGLView$OnTouchListener;)V

    invoke-virtual {v0, v8}, Lcom/sec/android/glview/TwGLView;->setRotatable(Z)V

    invoke-virtual {v0, v8}, Lcom/sec/android/glview/TwGLView;->setCenterPivot(Z)V

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailListMenu$TwGLMenuAdapter;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLThumbnailListMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLThumbnailListMenu;->mItemList:Landroid/util/SparseArray;
    invoke-static {v1}, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailListMenu;->access$200(Lcom/sec/android/app/camera/glwidget/TwGLThumbnailListMenu;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v6}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getCommandId()I

    move-result v2

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    move-object v0, p2

    goto :goto_0
.end method

.method public reset()V
    .locals 0

    return-void
.end method
