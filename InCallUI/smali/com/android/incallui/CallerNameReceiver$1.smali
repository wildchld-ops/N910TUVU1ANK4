.class Lcom/android/incallui/CallerNameReceiver$1;
.super Ljava/lang/Object;
.source "CallerNameReceiver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/CallerNameReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/CallerNameReceiver;


# direct methods
.method constructor <init>(Lcom/android/incallui/CallerNameReceiver;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/CallerNameReceiver$1;->this$0:Lcom/android/incallui/CallerNameReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/CallerNameReceiver$1;->this$0:Lcom/android/incallui/CallerNameReceiver;

    iget-object v0, v0, Lcom/android/incallui/CallerNameReceiver;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/incallui/InCallUtils;->broadcastCallName(Landroid/content/Context;)V

    return-void
.end method
