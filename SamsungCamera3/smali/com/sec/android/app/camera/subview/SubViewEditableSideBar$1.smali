.class Lcom/sec/android/app/camera/subview/SubViewEditableSideBar$1;
.super Ljava/lang/Object;
.source "SubViewEditableSideBar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/subview/SubViewEditableSideBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/subview/SubViewEditableSideBar;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/subview/SubViewEditableSideBar;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/subview/SubViewEditableSideBar$1;->this$0:Lcom/sec/android/app/camera/subview/SubViewEditableSideBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1    # Landroid/view/View;

    const/4 v6, 0x3

    const/4 v0, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v3, p0, Lcom/sec/android/app/camera/subview/SubViewEditableSideBar$1;->this$0:Lcom/sec/android/app/camera/subview/SubViewEditableSideBar;

    invoke-virtual {v3, v1}, Lcom/sec/android/app/camera/subview/SubViewEditableSideBar;->indexOf(I)I

    move-result v2

    iget-object v3, p0, Lcom/sec/android/app/camera/subview/SubViewEditableSideBar$1;->this$0:Lcom/sec/android/app/camera/subview/SubViewEditableSideBar;

    iget-object v3, v3, Lcom/sec/android/app/camera/subview/SubViewBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    iget-object v4, p0, Lcom/sec/android/app/camera/subview/SubViewEditableSideBar$1;->this$0:Lcom/sec/android/app/camera/subview/SubViewEditableSideBar;

    iget-object v4, v4, Lcom/sec/android/app/camera/subview/SubViewBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/Camera;->getMenuRoot()Lcom/sec/android/glview/TwGLViewGroup;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/android/app/camera/subview/SubViewEditableSideBar$1;->this$0:Lcom/sec/android/app/camera/subview/SubViewEditableSideBar;

    iget-object v5, v5, Lcom/sec/android/app/camera/subview/SubViewBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/Camera;->getMenuResourceDepot()Lcom/sec/android/app/camera/MenuResourceDepot;

    move-result-object v5

    invoke-static {v1, v3, v4, v5, v6}, Lcom/sec/android/app/camera/command/CommandBuilder;->buildCommand(ILcom/sec/android/app/camera/Camera;Lcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;I)Lcom/sec/android/app/camera/command/MenuCommand;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v0, v6}, Lcom/sec/android/app/camera/command/MenuCommand;->setZOrder(I)V

    const/4 v3, 0x7

    if-eq v1, v3, :cond_1

    const/16 v3, 0x8

    if-eq v1, v3, :cond_1

    const/16 v3, 0x6d

    if-eq v1, v3, :cond_1

    iget-object v3, p0, Lcom/sec/android/app/camera/subview/SubViewEditableSideBar$1;->this$0:Lcom/sec/android/app/camera/subview/SubViewEditableSideBar;

    # getter for: Lcom/sec/android/app/camera/subview/SubViewEditableSideBar;->mAnchor:[Lcom/sec/android/glview/TwGLImage;
    invoke-static {v3}, Lcom/sec/android/app/camera/subview/SubViewEditableSideBar;->access$000(Lcom/sec/android/app/camera/subview/SubViewEditableSideBar;)[Lcom/sec/android/glview/TwGLImage;

    move-result-object v3

    aget-object v3, v3, v2

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/command/MenuCommand;->setAnchor(Lcom/sec/android/glview/TwGLImage;)V

    # getter for: Lcom/sec/android/app/camera/subview/SubViewEditableSideBar;->LAUNCH_POS_X:I
    invoke-static {}, Lcom/sec/android/app/camera/subview/SubViewEditableSideBar;->access$100()I

    move-result v3

    # getter for: Lcom/sec/android/app/camera/subview/SubViewEditableSideBar;->ANCHOR_POS_X_OFFSET:I
    invoke-static {}, Lcom/sec/android/app/camera/subview/SubViewEditableSideBar;->access$200()I

    move-result v4

    mul-int/2addr v4, v2

    add-int/2addr v3, v4

    int-to-float v3, v3

    # getter for: Lcom/sec/android/app/camera/subview/SubViewEditableSideBar;->ANCHOR_POS_Y:I
    invoke-static {}, Lcom/sec/android/app/camera/subview/SubViewEditableSideBar;->access$300()I

    move-result v4

    # getter for: Lcom/sec/android/app/camera/subview/SubViewEditableSideBar;->ANCHOR_HEIGHT:I
    invoke-static {}, Lcom/sec/android/app/camera/subview/SubViewEditableSideBar;->access$400()I

    move-result v5

    add-int/2addr v4, v5

    int-to-float v4, v4

    invoke-virtual {v0, v3, v4}, Lcom/sec/android/app/camera/command/MenuCommand;->setLaunchPosition(FF)V

    :cond_1
    invoke-virtual {v0}, Lcom/sec/android/app/camera/command/MenuCommand;->execute()Z

    iget-object v3, p0, Lcom/sec/android/app/camera/subview/SubViewEditableSideBar$1;->this$0:Lcom/sec/android/app/camera/subview/SubViewEditableSideBar;

    invoke-virtual {v3, v1}, Lcom/sec/android/app/camera/subview/SubViewEditableSideBar;->updateShortcutButton(I)V

    iget-object v3, p0, Lcom/sec/android/app/camera/subview/SubViewEditableSideBar$1;->this$0:Lcom/sec/android/app/camera/subview/SubViewEditableSideBar;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/subview/SubViewBase;->onUserInteraction()V

    goto :goto_0
.end method
