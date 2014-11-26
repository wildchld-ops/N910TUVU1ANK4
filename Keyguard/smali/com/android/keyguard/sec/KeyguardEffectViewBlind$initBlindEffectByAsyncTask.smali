.class public Lcom/android/keyguard/sec/KeyguardEffectViewBlind$initBlindEffectByAsyncTask;
.super Landroid/os/AsyncTask;
.source "KeyguardEffectViewBlind.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/sec/KeyguardEffectViewBlind;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "initBlindEffectByAsyncTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field light:Landroid/graphics/Bitmap;

.field final synthetic this$0:Lcom/android/keyguard/sec/KeyguardEffectViewBlind;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/sec/KeyguardEffectViewBlind;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBlind$initBlindEffectByAsyncTask;->this$0:Lcom/android/keyguard/sec/KeyguardEffectViewBlind;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1    # [Ljava/lang/Object;

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/keyguard/sec/KeyguardEffectViewBlind$initBlindEffectByAsyncTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 3
    .param p1    # [Ljava/lang/Void;

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBlind$initBlindEffectByAsyncTask;->this$0:Lcom/android/keyguard/sec/KeyguardEffectViewBlind;

    # getter for: Lcom/android/keyguard/sec/KeyguardEffectViewBlind;->blindEffect:Lcom/sec/android/visualeffect/blind/BlindEffect;
    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardEffectViewBlind;->access$300(Lcom/android/keyguard/sec/KeyguardEffectViewBlind;)Lcom/sec/android/visualeffect/blind/BlindEffect;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBlind$initBlindEffectByAsyncTask;->this$0:Lcom/android/keyguard/sec/KeyguardEffectViewBlind;

    invoke-virtual {v1}, Lcom/android/keyguard/sec/KeyguardEffectViewBlind;->getUnlockDelay()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/visualeffect/blind/BlindEffect;->setUnlockDelayDuration(J)V

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBlind$initBlindEffectByAsyncTask;->this$0:Lcom/android/keyguard/sec/KeyguardEffectViewBlind;

    # getter for: Lcom/android/keyguard/sec/KeyguardEffectViewBlind;->blindEffect:Lcom/sec/android/visualeffect/blind/BlindEffect;
    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardEffectViewBlind;->access$300(Lcom/android/keyguard/sec/KeyguardEffectViewBlind;)Lcom/sec/android/visualeffect/blind/BlindEffect;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBlind$initBlindEffectByAsyncTask;->light:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Lcom/sec/android/visualeffect/blind/BlindEffect;->setLightImage(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBlind$initBlindEffectByAsyncTask;->this$0:Lcom/android/keyguard/sec/KeyguardEffectViewBlind;

    # getter for: Lcom/android/keyguard/sec/KeyguardEffectViewBlind;->blindEffect:Lcom/sec/android/visualeffect/blind/BlindEffect;
    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardEffectViewBlind;->access$300(Lcom/android/keyguard/sec/KeyguardEffectViewBlind;)Lcom/sec/android/visualeffect/blind/BlindEffect;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBlind$initBlindEffectByAsyncTask;->this$0:Lcom/android/keyguard/sec/KeyguardEffectViewBlind;

    # invokes: Lcom/android/keyguard/sec/KeyguardEffectViewBlind;->setBackground()Landroid/graphics/Bitmap;
    invoke-static {v1}, Lcom/android/keyguard/sec/KeyguardEffectViewBlind;->access$500(Lcom/android/keyguard/sec/KeyguardEffectViewBlind;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/visualeffect/blind/BlindEffect;->setBackgroundImage(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBlind$initBlindEffectByAsyncTask;->this$0:Lcom/android/keyguard/sec/KeyguardEffectViewBlind;

    # getter for: Lcom/android/keyguard/sec/KeyguardEffectViewBlind;->blindEffect:Lcom/sec/android/visualeffect/blind/BlindEffect;
    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardEffectViewBlind;->access$300(Lcom/android/keyguard/sec/KeyguardEffectViewBlind;)Lcom/sec/android/visualeffect/blind/BlindEffect;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/visualeffect/blind/BlindEffect;->blindEffectInit()V

    const-string v0, "BlindEffect"

    const-string v1, "KeyguardEffectViewBlind : doInBackground"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/keyguard/sec/KeyguardEffectViewBlind$initBlindEffectByAsyncTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 5
    .param p1    # Ljava/lang/Void;

    const/4 v4, 0x0

    const-string v0, "BlindEffect"

    const-string v1, "KeyguardEffectViewBlind : onPostExecute"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBlind$initBlindEffectByAsyncTask;->this$0:Lcom/android/keyguard/sec/KeyguardEffectViewBlind;

    const/4 v1, 0x1

    # setter for: Lcom/android/keyguard/sec/KeyguardEffectViewBlind;->isAsyncPostExecuted:Z
    invoke-static {v0, v1}, Lcom/android/keyguard/sec/KeyguardEffectViewBlind;->access$202(Lcom/android/keyguard/sec/KeyguardEffectViewBlind;Z)Z

    const-string v0, "BlindEffect"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "KeyguardEffectViewBlind : isAsyncPostExecuted = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBlind$initBlindEffectByAsyncTask;->this$0:Lcom/android/keyguard/sec/KeyguardEffectViewBlind;

    # getter for: Lcom/android/keyguard/sec/KeyguardEffectViewBlind;->isAsyncPostExecuted:Z
    invoke-static {v2}, Lcom/android/keyguard/sec/KeyguardEffectViewBlind;->access$200(Lcom/android/keyguard/sec/KeyguardEffectViewBlind;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBlind$initBlindEffectByAsyncTask;->this$0:Lcom/android/keyguard/sec/KeyguardEffectViewBlind;

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBlind$initBlindEffectByAsyncTask;->this$0:Lcom/android/keyguard/sec/KeyguardEffectViewBlind;

    # getter for: Lcom/android/keyguard/sec/KeyguardEffectViewBlind;->blindEffect:Lcom/sec/android/visualeffect/blind/BlindEffect;
    invoke-static {v1}, Lcom/android/keyguard/sec/KeyguardEffectViewBlind;->access$300(Lcom/android/keyguard/sec/KeyguardEffectViewBlind;)Lcom/sec/android/visualeffect/blind/BlindEffect;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/keyguard/sec/KeyguardEffectViewBlind;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBlind$initBlindEffectByAsyncTask;->this$0:Lcom/android/keyguard/sec/KeyguardEffectViewBlind;

    # getter for: Lcom/android/keyguard/sec/KeyguardEffectViewBlind;->isOnConfigurationChanged:Z
    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardEffectViewBlind;->access$600(Lcom/android/keyguard/sec/KeyguardEffectViewBlind;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBlind$initBlindEffectByAsyncTask;->this$0:Lcom/android/keyguard/sec/KeyguardEffectViewBlind;

    # getter for: Lcom/android/keyguard/sec/KeyguardEffectViewBlind;->blindEffect:Lcom/sec/android/visualeffect/blind/BlindEffect;
    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardEffectViewBlind;->access$300(Lcom/android/keyguard/sec/KeyguardEffectViewBlind;)Lcom/sec/android/visualeffect/blind/BlindEffect;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/visualeffect/blind/BlindEffect;->resetOrientation()V

    const-string v0, "BlindEffect"

    const-string v1, "AsyncTask : onConfigurationChanged() start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBlind$initBlindEffectByAsyncTask;->this$0:Lcom/android/keyguard/sec/KeyguardEffectViewBlind;

    # setter for: Lcom/android/keyguard/sec/KeyguardEffectViewBlind;->isOnConfigurationChanged:Z
    invoke-static {v0, v4}, Lcom/android/keyguard/sec/KeyguardEffectViewBlind;->access$602(Lcom/android/keyguard/sec/KeyguardEffectViewBlind;Z)Z

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBlind$initBlindEffectByAsyncTask;->this$0:Lcom/android/keyguard/sec/KeyguardEffectViewBlind;

    # getter for: Lcom/android/keyguard/sec/KeyguardEffectViewBlind;->isShow:Z
    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardEffectViewBlind;->access$700(Lcom/android/keyguard/sec/KeyguardEffectViewBlind;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBlind$initBlindEffectByAsyncTask;->this$0:Lcom/android/keyguard/sec/KeyguardEffectViewBlind;

    # getter for: Lcom/android/keyguard/sec/KeyguardEffectViewBlind;->blindEffect:Lcom/sec/android/visualeffect/blind/BlindEffect;
    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardEffectViewBlind;->access$300(Lcom/android/keyguard/sec/KeyguardEffectViewBlind;)Lcom/sec/android/visualeffect/blind/BlindEffect;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/visualeffect/blind/BlindEffect;->show()V

    const-string v0, "BlindEffect"

    const-string v1, "AsyncTask : show() start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBlind$initBlindEffectByAsyncTask;->this$0:Lcom/android/keyguard/sec/KeyguardEffectViewBlind;

    # setter for: Lcom/android/keyguard/sec/KeyguardEffectViewBlind;->isShow:Z
    invoke-static {v0, v4}, Lcom/android/keyguard/sec/KeyguardEffectViewBlind;->access$702(Lcom/android/keyguard/sec/KeyguardEffectViewBlind;Z)Z

    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBlind$initBlindEffectByAsyncTask;->this$0:Lcom/android/keyguard/sec/KeyguardEffectViewBlind;

    # getter for: Lcom/android/keyguard/sec/KeyguardEffectViewBlind;->isCleanUp:Z
    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardEffectViewBlind;->access$800(Lcom/android/keyguard/sec/KeyguardEffectViewBlind;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBlind$initBlindEffectByAsyncTask;->this$0:Lcom/android/keyguard/sec/KeyguardEffectViewBlind;

    # getter for: Lcom/android/keyguard/sec/KeyguardEffectViewBlind;->blindEffect:Lcom/sec/android/visualeffect/blind/BlindEffect;
    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardEffectViewBlind;->access$300(Lcom/android/keyguard/sec/KeyguardEffectViewBlind;)Lcom/sec/android/visualeffect/blind/BlindEffect;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/visualeffect/blind/BlindEffect;->clearEffect()V

    const-string v0, "BlindEffect"

    const-string v1, "AsyncTask : cleanUp() start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBlind$initBlindEffectByAsyncTask;->this$0:Lcom/android/keyguard/sec/KeyguardEffectViewBlind;

    # setter for: Lcom/android/keyguard/sec/KeyguardEffectViewBlind;->isCleanUp:Z
    invoke-static {v0, v4}, Lcom/android/keyguard/sec/KeyguardEffectViewBlind;->access$802(Lcom/android/keyguard/sec/KeyguardEffectViewBlind;Z)Z

    :cond_2
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBlind$initBlindEffectByAsyncTask;->this$0:Lcom/android/keyguard/sec/KeyguardEffectViewBlind;

    # getter for: Lcom/android/keyguard/sec/KeyguardEffectViewBlind;->isUpdate:Z
    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardEffectViewBlind;->access$900(Lcom/android/keyguard/sec/KeyguardEffectViewBlind;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBlind$initBlindEffectByAsyncTask;->this$0:Lcom/android/keyguard/sec/KeyguardEffectViewBlind;

    # getter for: Lcom/android/keyguard/sec/KeyguardEffectViewBlind;->blindEffect:Lcom/sec/android/visualeffect/blind/BlindEffect;
    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardEffectViewBlind;->access$300(Lcom/android/keyguard/sec/KeyguardEffectViewBlind;)Lcom/sec/android/visualeffect/blind/BlindEffect;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBlind$initBlindEffectByAsyncTask;->this$0:Lcom/android/keyguard/sec/KeyguardEffectViewBlind;

    # invokes: Lcom/android/keyguard/sec/KeyguardEffectViewBlind;->setBackground()Landroid/graphics/Bitmap;
    invoke-static {v1}, Lcom/android/keyguard/sec/KeyguardEffectViewBlind;->access$500(Lcom/android/keyguard/sec/KeyguardEffectViewBlind;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/visualeffect/blind/BlindEffect;->setBackgroundImage(Landroid/graphics/Bitmap;)V

    const-string v0, "BlindEffect"

    const-string v1, "AsyncTask : update() start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBlind$initBlindEffectByAsyncTask;->this$0:Lcom/android/keyguard/sec/KeyguardEffectViewBlind;

    # setter for: Lcom/android/keyguard/sec/KeyguardEffectViewBlind;->isUpdate:Z
    invoke-static {v0, v4}, Lcom/android/keyguard/sec/KeyguardEffectViewBlind;->access$902(Lcom/android/keyguard/sec/KeyguardEffectViewBlind;Z)Z

    :cond_3
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBlind$initBlindEffectByAsyncTask;->this$0:Lcom/android/keyguard/sec/KeyguardEffectViewBlind;

    # getter for: Lcom/android/keyguard/sec/KeyguardEffectViewBlind;->isHandleUnlock:Z
    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardEffectViewBlind;->access$1000(Lcom/android/keyguard/sec/KeyguardEffectViewBlind;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBlind$initBlindEffectByAsyncTask;->this$0:Lcom/android/keyguard/sec/KeyguardEffectViewBlind;

    # getter for: Lcom/android/keyguard/sec/KeyguardEffectViewBlind;->blindEffect:Lcom/sec/android/visualeffect/blind/BlindEffect;
    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardEffectViewBlind;->access$300(Lcom/android/keyguard/sec/KeyguardEffectViewBlind;)Lcom/sec/android/visualeffect/blind/BlindEffect;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/visualeffect/blind/BlindEffect;->unlockEffect()V

    const-string v0, "BlindEffect"

    const-string v1, "AsyncTask : handleUnlock() start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBlind$initBlindEffectByAsyncTask;->this$0:Lcom/android/keyguard/sec/KeyguardEffectViewBlind;

    # setter for: Lcom/android/keyguard/sec/KeyguardEffectViewBlind;->isHandleUnlock:Z
    invoke-static {v0, v4}, Lcom/android/keyguard/sec/KeyguardEffectViewBlind;->access$1002(Lcom/android/keyguard/sec/KeyguardEffectViewBlind;Z)Z

    :cond_4
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBlind$initBlindEffectByAsyncTask;->this$0:Lcom/android/keyguard/sec/KeyguardEffectViewBlind;

    # getter for: Lcom/android/keyguard/sec/KeyguardEffectViewBlind;->isShowUnlockAffordance:Z
    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardEffectViewBlind;->access$1100(Lcom/android/keyguard/sec/KeyguardEffectViewBlind;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBlind$initBlindEffectByAsyncTask;->this$0:Lcom/android/keyguard/sec/KeyguardEffectViewBlind;

    # getter for: Lcom/android/keyguard/sec/KeyguardEffectViewBlind;->blindEffect:Lcom/sec/android/visualeffect/blind/BlindEffect;
    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardEffectViewBlind;->access$300(Lcom/android/keyguard/sec/KeyguardEffectViewBlind;)Lcom/sec/android/visualeffect/blind/BlindEffect;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBlind$initBlindEffectByAsyncTask;->this$0:Lcom/android/keyguard/sec/KeyguardEffectViewBlind;

    # getter for: Lcom/android/keyguard/sec/KeyguardEffectViewBlind;->affordanceDelay:J
    invoke-static {v1}, Lcom/android/keyguard/sec/KeyguardEffectViewBlind;->access$1200(Lcom/android/keyguard/sec/KeyguardEffectViewBlind;)J

    move-result-wide v1

    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBlind$initBlindEffectByAsyncTask;->this$0:Lcom/android/keyguard/sec/KeyguardEffectViewBlind;

    # getter for: Lcom/android/keyguard/sec/KeyguardEffectViewBlind;->affordanceRect:Landroid/graphics/Rect;
    invoke-static {v3}, Lcom/android/keyguard/sec/KeyguardEffectViewBlind;->access$1300(Lcom/android/keyguard/sec/KeyguardEffectViewBlind;)Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/visualeffect/blind/BlindEffect;->showUnlockAffordance(JLandroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBlind$initBlindEffectByAsyncTask;->this$0:Lcom/android/keyguard/sec/KeyguardEffectViewBlind;

    # setter for: Lcom/android/keyguard/sec/KeyguardEffectViewBlind;->isShowUnlockAffordance:Z
    invoke-static {v0, v4}, Lcom/android/keyguard/sec/KeyguardEffectViewBlind;->access$1102(Lcom/android/keyguard/sec/KeyguardEffectViewBlind;Z)Z

    :cond_5
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 3

    const-string v0, "BlindEffect"

    const-string v1, "KeyguardEffectViewBlind : onPreExecute"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "BlindEffect"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "KeyguardEffectViewBlind : isAsyncPostExecuted = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBlind$initBlindEffectByAsyncTask;->this$0:Lcom/android/keyguard/sec/KeyguardEffectViewBlind;

    # getter for: Lcom/android/keyguard/sec/KeyguardEffectViewBlind;->isAsyncPostExecuted:Z
    invoke-static {v2}, Lcom/android/keyguard/sec/KeyguardEffectViewBlind;->access$200(Lcom/android/keyguard/sec/KeyguardEffectViewBlind;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBlind$initBlindEffectByAsyncTask;->this$0:Lcom/android/keyguard/sec/KeyguardEffectViewBlind;

    invoke-virtual {v0}, Lcom/android/keyguard/sec/KeyguardEffectViewBlind;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200d8

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBlind$initBlindEffectByAsyncTask;->light:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBlind$initBlindEffectByAsyncTask;->this$0:Lcom/android/keyguard/sec/KeyguardEffectViewBlind;

    new-instance v1, Lcom/sec/android/visualeffect/blind/BlindEffect;

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBlind$initBlindEffectByAsyncTask;->this$0:Lcom/android/keyguard/sec/KeyguardEffectViewBlind;

    # getter for: Lcom/android/keyguard/sec/KeyguardEffectViewBlind;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/keyguard/sec/KeyguardEffectViewBlind;->access$400(Lcom/android/keyguard/sec/KeyguardEffectViewBlind;)Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/sec/android/visualeffect/blind/BlindEffect;-><init>(Landroid/content/Context;)V

    # setter for: Lcom/android/keyguard/sec/KeyguardEffectViewBlind;->blindEffect:Lcom/sec/android/visualeffect/blind/BlindEffect;
    invoke-static {v0, v1}, Lcom/android/keyguard/sec/KeyguardEffectViewBlind;->access$302(Lcom/android/keyguard/sec/KeyguardEffectViewBlind;Lcom/sec/android/visualeffect/blind/BlindEffect;)Lcom/sec/android/visualeffect/blind/BlindEffect;

    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    return-void
.end method
