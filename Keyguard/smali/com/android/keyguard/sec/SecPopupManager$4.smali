.class final Lcom/android/keyguard/sec/SecPopupManager$4;
.super Landroid/os/Handler;
.source "SecPopupManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/sec/SecPopupManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 0
    .param p1    # Landroid/os/Message;

    # invokes: Lcom/android/keyguard/sec/SecPopupManager;->dismissdDialog()V
    invoke-static {}, Lcom/android/keyguard/sec/SecPopupManager;->access$000()V

    return-void
.end method
