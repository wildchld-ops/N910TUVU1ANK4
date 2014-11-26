.class Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView$3;
.super Landroid/os/Handler;
.source "KeyguardMagazineCardMainView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView$3;->this$0:Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1    # Landroid/os/Message;

    iget-object v0, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView$3;->this$0:Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;

    const/4 v1, 0x0

    # setter for: Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;->mIsWakeupActionBlocked:Z
    invoke-static {v0, v1}, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;->access$402(Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;Z)Z

    return-void
.end method
