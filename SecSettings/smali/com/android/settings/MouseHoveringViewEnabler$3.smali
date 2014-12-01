.class Lcom/android/settings/MouseHoveringViewEnabler$3;
.super Ljava/lang/Object;
.source "MouseHoveringViewEnabler.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/MouseHoveringViewEnabler;->makeTalkBackDisablePopup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/MouseHoveringViewEnabler;


# direct methods
.method constructor <init>(Lcom/android/settings/MouseHoveringViewEnabler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/MouseHoveringViewEnabler$3;->this$0:Lcom/android/settings/MouseHoveringViewEnabler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/android/settings/MouseHoveringViewEnabler$3;->this$0:Lcom/android/settings/MouseHoveringViewEnabler;

    # getter for: Lcom/android/settings/MouseHoveringViewEnabler;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/settings/MouseHoveringViewEnabler;->access$100(Lcom/android/settings/MouseHoveringViewEnabler;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->turnOffTalkBack(Landroid/content/Context;)Z

    iget-object v0, p0, Lcom/android/settings/MouseHoveringViewEnabler$3;->this$0:Lcom/android/settings/MouseHoveringViewEnabler;

    # getter for: Lcom/android/settings/MouseHoveringViewEnabler;->mSwitch:Landroid/widget/Switch;
    invoke-static {v0}, Lcom/android/settings/MouseHoveringViewEnabler;->access$000(Lcom/android/settings/MouseHoveringViewEnabler;)Landroid/widget/Switch;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/settings/MouseHoveringViewEnabler$3;->this$0:Lcom/android/settings/MouseHoveringViewEnabler;

    # getter for: Lcom/android/settings/MouseHoveringViewEnabler;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/settings/MouseHoveringViewEnabler;->access$100(Lcom/android/settings/MouseHoveringViewEnabler;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "mouse_hovering"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v0, p0, Lcom/android/settings/MouseHoveringViewEnabler$3;->this$0:Lcom/android/settings/MouseHoveringViewEnabler;

    # getter for: Lcom/android/settings/MouseHoveringViewEnabler;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/settings/MouseHoveringViewEnabler;->access$100(Lcom/android/settings/MouseHoveringViewEnabler;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "mouse_hovering_highlight"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-static {v2}, Lcom/sec/android/hardware/SecHardwareInterface;->enableHoverEvent(Z)Z

    iget-object v0, p0, Lcom/android/settings/MouseHoveringViewEnabler$3;->this$0:Lcom/android/settings/MouseHoveringViewEnabler;

    # invokes: Lcom/android/settings/MouseHoveringViewEnabler;->broadcastMouseHoveringChanged(Z)V
    invoke-static {v0, v2}, Lcom/android/settings/MouseHoveringViewEnabler;->access$200(Lcom/android/settings/MouseHoveringViewEnabler;Z)V

    return-void
.end method
