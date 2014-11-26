.class Lcom/android/mms/ui/SlideView$3;
.super Ljava/lang/Object;
.source "SlideView.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/SlideView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/SlideView;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/SlideView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/SlideView$3;->this$0:Lcom/android/mms/ui/SlideView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 4
    .param p1    # Landroid/media/MediaPlayer;
    .param p2    # I
    .param p3    # I

    const v2, 0x7f0c00fa

    const/4 v3, 0x0

    const/4 v0, -0x4

    if-ne p2, v0, :cond_0

    const-string v0, "Mms/SlideView"

    const-string v1, ">>MEDIA_ERROR_NOTSUPPORT<<"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/mms/ui/SlideView$3;->this$0:Lcom/android/mms/ui/SlideView;

    # getter for: Landroid/view/View;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/mms/ui/SlideView;->access$600(Lcom/android/mms/ui/SlideView;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/SlideView$3;->this$0:Lcom/android/mms/ui/SlideView;

    # getter for: Landroid/view/View;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/mms/ui/SlideView;->access$700(Lcom/android/mms/ui/SlideView;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :goto_0
    const/4 v0, 0x1

    return v0

    :cond_0
    const/16 v0, -0xa

    if-ne p2, v0, :cond_1

    const-string v0, "Mms/SlideView"

    const-string v1, ">>MEDIA_ERROR_CURRUPT<<"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/mms/ui/SlideView$3;->this$0:Lcom/android/mms/ui/SlideView;

    # getter for: Landroid/view/View;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/mms/ui/SlideView;->access$800(Lcom/android/mms/ui/SlideView;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/SlideView$3;->this$0:Lcom/android/mms/ui/SlideView;

    # getter for: Landroid/view/View;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/mms/ui/SlideView;->access$900(Lcom/android/mms/ui/SlideView;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_1
    const-string v0, "Mms/SlideView"

    const-string v1, ">>Unknown error<<"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/mms/ui/SlideView$3;->this$0:Lcom/android/mms/ui/SlideView;

    # getter for: Landroid/view/View;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/mms/ui/SlideView;->access$1000(Lcom/android/mms/ui/SlideView;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/SlideView$3;->this$0:Lcom/android/mms/ui/SlideView;

    # getter for: Landroid/view/View;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/mms/ui/SlideView;->access$1100(Lcom/android/mms/ui/SlideView;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0c0124

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
