.class Lcom/android/mms/ui/TestVideoView$1;
.super Ljava/lang/Object;
.source "TestVideoView.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnScrollChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/TestVideoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/TestVideoView;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/TestVideoView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/TestVideoView$1;->this$0:Lcom/android/mms/ui/TestVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollChanged()V
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/TestVideoView$1;->this$0:Lcom/android/mms/ui/TestVideoView;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    return-void
.end method
