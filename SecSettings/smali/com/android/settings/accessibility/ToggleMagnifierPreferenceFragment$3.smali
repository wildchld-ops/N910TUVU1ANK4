.class Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment$3;
.super Ljava/lang/Object;
.source "ToggleMagnifierPreferenceFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->showHoverZoomDisablePopup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment$3;->this$0:Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment$3;->this$0:Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    # getter for: Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->ctx:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->access$000(Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "accessibility_magnifier"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v0, p0, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment$3;->this$0:Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    # invokes: Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->updatedEnableState(Z)V
    invoke-static {v0, v2}, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->access$100(Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;Z)V

    return-void
.end method
