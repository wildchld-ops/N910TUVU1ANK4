.class Lcom/android/settings/ToddlerModeSwitchEnabler$4;
.super Ljava/lang/Object;
.source "ToddlerModeSwitchEnabler.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/ToddlerModeSwitchEnabler;->showConfirmPopup(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/ToddlerModeSwitchEnabler;


# direct methods
.method constructor <init>(Lcom/android/settings/ToddlerModeSwitchEnabler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/ToddlerModeSwitchEnabler$4;->this$0:Lcom/android/settings/ToddlerModeSwitchEnabler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v0, "ToddlerModeSwitchEnabler"

    const-string v3, "showConfirmPopup() - Positive onClick mode: ok"

    invoke-static {v0, v3}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "ToddlerModeSwitchEnabler"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "showConfirmPopup() - ("

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, p0, Lcom/android/settings/ToddlerModeSwitchEnabler$4;->this$0:Lcom/android/settings/ToddlerModeSwitchEnabler;

    # getter for: Lcom/android/settings/ToddlerModeSwitchEnabler;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/settings/ToddlerModeSwitchEnabler;->access$200(Lcom/android/settings/ToddlerModeSwitchEnabler;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/android/settings/ToddlerModeSwitchEnabler;->isToddlerModeOn(Landroid/content/Context;)Z

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ")"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " to ("

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v0, p0, Lcom/android/settings/ToddlerModeSwitchEnabler$4;->this$0:Lcom/android/settings/ToddlerModeSwitchEnabler;

    # getter for: Lcom/android/settings/ToddlerModeSwitchEnabler;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/settings/ToddlerModeSwitchEnabler;->access$200(Lcom/android/settings/ToddlerModeSwitchEnabler;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/ToddlerModeSwitchEnabler;->isToddlerModeOn(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ")"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    iget-object v0, p0, Lcom/android/settings/ToddlerModeSwitchEnabler$4;->this$0:Lcom/android/settings/ToddlerModeSwitchEnabler;

    iget-object v3, p0, Lcom/android/settings/ToddlerModeSwitchEnabler$4;->this$0:Lcom/android/settings/ToddlerModeSwitchEnabler;

    # getter for: Lcom/android/settings/ToddlerModeSwitchEnabler;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/settings/ToddlerModeSwitchEnabler;->access$200(Lcom/android/settings/ToddlerModeSwitchEnabler;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/ToddlerModeSwitchEnabler;->isToddlerModeOn(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_1

    :goto_1
    # invokes: Lcom/android/settings/ToddlerModeSwitchEnabler;->setMode(Z)V
    invoke-static {v0, v1}, Lcom/android/settings/ToddlerModeSwitchEnabler;->access$400(Lcom/android/settings/ToddlerModeSwitchEnabler;Z)V

    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method
