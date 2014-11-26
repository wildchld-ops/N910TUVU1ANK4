.class Lcom/android/systemui/recent/multiwindow/SmartClipDragDrop$7$1;
.super Ljava/lang/Object;
.source "SmartClipDragDrop.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/recent/multiwindow/SmartClipDragDrop$7;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/recent/multiwindow/SmartClipDragDrop$7;

.field final synthetic val$getEvent:Landroid/view/MotionEvent;

.field final synthetic val$getView:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/systemui/recent/multiwindow/SmartClipDragDrop$7;Landroid/view/View;Landroid/view/MotionEvent;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/recent/multiwindow/SmartClipDragDrop$7$1;->this$1:Lcom/android/systemui/recent/multiwindow/SmartClipDragDrop$7;

    iput-object p2, p0, Lcom/android/systemui/recent/multiwindow/SmartClipDragDrop$7$1;->val$getView:Landroid/view/View;

    iput-object p3, p0, Lcom/android/systemui/recent/multiwindow/SmartClipDragDrop$7$1;->val$getEvent:Landroid/view/MotionEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/recent/multiwindow/SmartClipDragDrop$7$1;->this$1:Lcom/android/systemui/recent/multiwindow/SmartClipDragDrop$7;

    iget-object v0, v0, Lcom/android/systemui/recent/multiwindow/SmartClipDragDrop$7;->this$0:Lcom/android/systemui/recent/multiwindow/SmartClipDragDrop;

    iget-object v1, p0, Lcom/android/systemui/recent/multiwindow/SmartClipDragDrop$7$1;->val$getView:Landroid/view/View;

    iget-object v2, p0, Lcom/android/systemui/recent/multiwindow/SmartClipDragDrop$7$1;->val$getEvent:Landroid/view/MotionEvent;

    # invokes: Lcom/android/systemui/recent/multiwindow/SmartClipDragDrop;->getSmartClipData(Landroid/view/View;Landroid/view/MotionEvent;)V
    invoke-static {v0, v1, v2}, Lcom/android/systemui/recent/multiwindow/SmartClipDragDrop;->access$600(Lcom/android/systemui/recent/multiwindow/SmartClipDragDrop;Landroid/view/View;Landroid/view/MotionEvent;)V

    return-void
.end method
