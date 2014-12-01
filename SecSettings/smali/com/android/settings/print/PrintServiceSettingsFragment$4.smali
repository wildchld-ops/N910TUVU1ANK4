.class Lcom/android/settings/print/PrintServiceSettingsFragment$4;
.super Ljava/lang/Object;
.source "PrintServiceSettingsFragment.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/print/PrintServiceSettingsFragment;->initComponents()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/print/PrintServiceSettingsFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/print/PrintServiceSettingsFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/print/PrintServiceSettingsFragment$4;->this$0:Lcom/android/settings/print/PrintServiceSettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 4

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/android/settings/print/PrintServiceSettingsFragment$4;->this$0:Lcom/android/settings/print/PrintServiceSettingsFragment;

    # invokes: Lcom/android/settings/print/PrintServiceSettingsFragment;->updateEmptyView()V
    invoke-static {v1}, Lcom/android/settings/print/PrintServiceSettingsFragment;->access$100(Lcom/android/settings/print/PrintServiceSettingsFragment;)V

    if-eqz p2, :cond_0

    iget-object v1, p0, Lcom/android/settings/print/PrintServiceSettingsFragment$4;->this$0:Lcom/android/settings/print/PrintServiceSettingsFragment;

    # getter for: Lcom/android/settings/print/PrintServiceSettingsFragment;->mToggleSwitch:Lcom/android/settings/print/PrintSettingsFragment$ToggleSwitch;
    invoke-static {v1}, Lcom/android/settings/print/PrintServiceSettingsFragment;->access$900(Lcom/android/settings/print/PrintServiceSettingsFragment;)Lcom/android/settings/print/PrintSettingsFragment$ToggleSwitch;

    move-result-object v1

    invoke-virtual {v1, v3, v3, v3, v3}, Landroid/widget/TextView;->setPaddingRelative(IIII)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/settings/print/PrintServiceSettingsFragment$4;->this$0:Lcom/android/settings/print/PrintServiceSettingsFragment;

    invoke-virtual {v1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f004c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iget-object v1, p0, Lcom/android/settings/print/PrintServiceSettingsFragment$4;->this$0:Lcom/android/settings/print/PrintServiceSettingsFragment;

    # getter for: Lcom/android/settings/print/PrintServiceSettingsFragment;->mToggleSwitch:Lcom/android/settings/print/PrintSettingsFragment$ToggleSwitch;
    invoke-static {v1}, Lcom/android/settings/print/PrintServiceSettingsFragment;->access$900(Lcom/android/settings/print/PrintServiceSettingsFragment;)Lcom/android/settings/print/PrintSettingsFragment$ToggleSwitch;

    move-result-object v1

    invoke-virtual {v1, v3, v3, v0, v3}, Landroid/widget/TextView;->setPaddingRelative(IIII)V

    goto :goto_0
.end method
