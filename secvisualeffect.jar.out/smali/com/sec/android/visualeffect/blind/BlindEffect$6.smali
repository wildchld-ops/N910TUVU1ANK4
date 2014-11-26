.class Lcom/sec/android/visualeffect/blind/BlindEffect$6;
.super Ljava/lang/Object;
.source "BlindEffect.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/visualeffect/blind/BlindEffect;->setAffordanceRunnable()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/visualeffect/blind/BlindEffect;


# direct methods
.method constructor <init>(Lcom/sec/android/visualeffect/blind/BlindEffect;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/visualeffect/blind/BlindEffect$6;->this$0:Lcom/sec/android/visualeffect/blind/BlindEffect;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const-string v0, "BlindEffect"

    const-string v1, "affordanceRunnableDown"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/visualeffect/blind/BlindEffect$6;->this$0:Lcom/sec/android/visualeffect/blind/BlindEffect;

    iget-object v1, p0, Lcom/sec/android/visualeffect/blind/BlindEffect$6;->this$0:Lcom/sec/android/visualeffect/blind/BlindEffect;

    iget v1, v1, Lcom/sec/android/visualeffect/blind/BlindEffect;->affordanceX:F

    iget-object v2, p0, Lcom/sec/android/visualeffect/blind/BlindEffect$6;->this$0:Lcom/sec/android/visualeffect/blind/BlindEffect;

    iget v2, v2, Lcom/sec/android/visualeffect/blind/BlindEffect;->affordanceY:F

    # invokes: Lcom/sec/android/visualeffect/blind/BlindEffect;->playDownAnimator(FF)V
    invoke-static {v0, v1, v2}, Lcom/sec/android/visualeffect/blind/BlindEffect;->access$1300(Lcom/sec/android/visualeffect/blind/BlindEffect;FF)V

    iget-object v0, p0, Lcom/sec/android/visualeffect/blind/BlindEffect$6;->this$0:Lcom/sec/android/visualeffect/blind/BlindEffect;

    const-wide/16 v1, 0x64

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/visualeffect/blind/BlindEffect;->startAffordanceRunnableUp(J)V

    return-void
.end method
