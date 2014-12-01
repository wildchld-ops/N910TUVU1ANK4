.class Lcom/android/mms/ui/MmsPlayerController$3;
.super Ljava/lang/Object;
.source "MmsPlayerController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/MmsPlayerController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/MmsPlayerController;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/MmsPlayerController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/MmsPlayerController$3;->this$0:Lcom/android/mms/ui/MmsPlayerController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/android/mms/ui/MmsPlayerController$3;->this$0:Lcom/android/mms/ui/MmsPlayerController;

    invoke-virtual {v0}, Lcom/android/mms/ui/MmsPlayerController;->doPauseResume()V

    iget-object v0, p0, Lcom/android/mms/ui/MmsPlayerController$3;->this$0:Lcom/android/mms/ui/MmsPlayerController;

    const/16 v1, 0xbb8

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MmsPlayerController;->show(I)V

    return-void
.end method
