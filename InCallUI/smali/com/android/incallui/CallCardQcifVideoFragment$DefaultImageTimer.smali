.class Lcom/android/incallui/CallCardQcifVideoFragment$DefaultImageTimer;
.super Landroid/os/CountDownTimer;
.source "CallCardQcifVideoFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/CallCardQcifVideoFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DefaultImageTimer"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/CallCardQcifVideoFragment;


# direct methods
.method public constructor <init>(Lcom/android/incallui/CallCardQcifVideoFragment;JJ)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/CallCardQcifVideoFragment$DefaultImageTimer;->this$0:Lcom/android/incallui/CallCardQcifVideoFragment;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 2

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/android/incallui/CallCardQcifVideoFragment$DefaultImageTimer$1;

    invoke-direct {v1, p0}, Lcom/android/incallui/CallCardQcifVideoFragment$DefaultImageTimer$1;-><init>(Lcom/android/incallui/CallCardQcifVideoFragment$DefaultImageTimer;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onTick(J)V
    .locals 0

    return-void
.end method
