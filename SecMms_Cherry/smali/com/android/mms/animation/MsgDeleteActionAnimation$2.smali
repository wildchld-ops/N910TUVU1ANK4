.class Lcom/android/mms/animation/MsgDeleteActionAnimation$2;
.super Ljava/lang/Object;
.source "MsgDeleteActionAnimation.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/animation/MsgDeleteActionAnimation;->startDeleteActionAnimMultiThread()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/animation/MsgDeleteActionAnimation;


# direct methods
.method constructor <init>(Lcom/android/mms/animation/MsgDeleteActionAnimation;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/animation/MsgDeleteActionAnimation$2;->this$0:Lcom/android/mms/animation/MsgDeleteActionAnimation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/android/mms/animation/MsgDeleteActionAnimation$2;->this$0:Lcom/android/mms/animation/MsgDeleteActionAnimation;

    invoke-virtual {v0}, Lcom/android/mms/animation/MsgDeleteActionAnimation;->deleteActionAnimMultiThread()V

    return-void
.end method
