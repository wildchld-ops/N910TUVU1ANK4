.class Lcom/android/launcher2/Folder$9;
.super Landroid/animation/AnimatorListenerAdapter;
.source "Folder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/Folder;->animateOpen()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/Folder;


# direct methods
.method constructor <init>(Lcom/android/launcher2/Folder;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/Folder$9;->this$0:Lcom/android/launcher2/Folder;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4

    iget-object v0, p0, Lcom/android/launcher2/Folder$9;->this$0:Lcom/android/launcher2/Folder;

    const/4 v1, 0x1

    # setter for: Lcom/android/launcher2/Folder;->mIsFolderOpenAnimationEnded:Z
    invoke-static {v0, v1}, Lcom/android/launcher2/Folder;->access$702(Lcom/android/launcher2/Folder;Z)Z

    iget-object v0, p0, Lcom/android/launcher2/Folder$9;->this$0:Lcom/android/launcher2/Folder;

    new-instance v1, Lcom/android/launcher2/Folder$9$1;

    invoke-direct {v1, p0}, Lcom/android/launcher2/Folder$9$1;-><init>(Lcom/android/launcher2/Folder$9;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
