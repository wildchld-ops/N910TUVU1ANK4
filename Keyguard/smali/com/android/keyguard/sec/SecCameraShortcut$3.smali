.class Lcom/android/keyguard/sec/SecCameraShortcut$3;
.super Landroid/view/OrientationEventListener;
.source "SecCameraShortcut.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/sec/SecCameraShortcut;->onAttachedToWindow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/sec/SecCameraShortcut;


# direct methods
.method constructor <init>(Lcom/android/keyguard/sec/SecCameraShortcut;Landroid/content/Context;)V
    .locals 0
    .param p2    # Landroid/content/Context;

    iput-object p1, p0, Lcom/android/keyguard/sec/SecCameraShortcut$3;->this$0:Lcom/android/keyguard/sec/SecCameraShortcut;

    invoke-direct {p0, p2}, Landroid/view/OrientationEventListener;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onOrientationChanged(I)V
    .locals 2
    .param p1    # I

    const/16 v0, 0x145

    if-ge p1, v0, :cond_0

    const/16 v0, 0x23

    if-le v0, p1, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/sec/SecCameraShortcut$3;->this$0:Lcom/android/keyguard/sec/SecCameraShortcut;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/keyguard/sec/SecCameraShortcut;->rotateIcon(I)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    const/16 v0, 0x37

    if-lt p1, v0, :cond_3

    const/16 v0, 0x7d

    if-le v0, p1, :cond_3

    iget-object v0, p0, Lcom/android/keyguard/sec/SecCameraShortcut$3;->this$0:Lcom/android/keyguard/sec/SecCameraShortcut;

    # getter for: Lcom/android/keyguard/sec/SecCameraShortcut;->mIsLandscapeAvailable:Z
    invoke-static {v0}, Lcom/android/keyguard/sec/SecCameraShortcut;->access$400(Lcom/android/keyguard/sec/SecCameraShortcut;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/sec/SecCameraShortcut$3;->this$0:Lcom/android/keyguard/sec/SecCameraShortcut;

    const/16 v1, 0x10e

    invoke-virtual {v0, v1}, Lcom/android/keyguard/sec/SecCameraShortcut;->rotateIcon(I)V

    goto :goto_0

    :cond_3
    const/16 v0, 0x91

    if-lt p1, v0, :cond_4

    const/16 v0, 0xd7

    if-le v0, p1, :cond_4

    iget-object v0, p0, Lcom/android/keyguard/sec/SecCameraShortcut$3;->this$0:Lcom/android/keyguard/sec/SecCameraShortcut;

    # getter for: Lcom/android/keyguard/sec/SecCameraShortcut;->mIsLandscapeAvailable:Z
    invoke-static {v0}, Lcom/android/keyguard/sec/SecCameraShortcut;->access$400(Lcom/android/keyguard/sec/SecCameraShortcut;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/sec/SecCameraShortcut$3;->this$0:Lcom/android/keyguard/sec/SecCameraShortcut;

    const/16 v1, 0xb4

    invoke-virtual {v0, v1}, Lcom/android/keyguard/sec/SecCameraShortcut;->rotateIcon(I)V

    goto :goto_0

    :cond_4
    const/16 v0, 0xeb

    if-lt p1, v0, :cond_1

    const/16 v0, 0x131

    if-le v0, p1, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/sec/SecCameraShortcut$3;->this$0:Lcom/android/keyguard/sec/SecCameraShortcut;

    # getter for: Lcom/android/keyguard/sec/SecCameraShortcut;->mIsLandscapeAvailable:Z
    invoke-static {v0}, Lcom/android/keyguard/sec/SecCameraShortcut;->access$400(Lcom/android/keyguard/sec/SecCameraShortcut;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/sec/SecCameraShortcut$3;->this$0:Lcom/android/keyguard/sec/SecCameraShortcut;

    const/16 v1, 0x5a

    invoke-virtual {v0, v1}, Lcom/android/keyguard/sec/SecCameraShortcut;->rotateIcon(I)V

    goto :goto_0
.end method
