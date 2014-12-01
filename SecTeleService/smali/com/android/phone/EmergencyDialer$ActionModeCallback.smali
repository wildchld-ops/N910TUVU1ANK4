.class Lcom/android/phone/EmergencyDialer$ActionModeCallback;
.super Ljava/lang/Object;
.source "EmergencyDialer.java"

# interfaces
.implements Landroid/widget/AbsListView$MultiChoiceModeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/EmergencyDialer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ActionModeCallback"
.end annotation


# instance fields
.field private mMultiSelectActionBarView:Landroid/view/View;

.field final synthetic this$0:Lcom/android/phone/EmergencyDialer;


# direct methods
.method private constructor <init>(Lcom/android/phone/EmergencyDialer;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/EmergencyDialer$ActionModeCallback;->this$0:Lcom/android/phone/EmergencyDialer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/phone/EmergencyDialer;Lcom/android/phone/EmergencyDialer$1;)V
    .locals 0
    .param p1    # Lcom/android/phone/EmergencyDialer;
    .param p2    # Lcom/android/phone/EmergencyDialer$1;

    invoke-direct {p0, p1}, Lcom/android/phone/EmergencyDialer$ActionModeCallback;-><init>(Lcom/android/phone/EmergencyDialer;)V

    return-void
.end method


# virtual methods
.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 3
    .param p1    # Landroid/view/ActionMode;
    .param p2    # Landroid/view/MenuItem;

    const/4 v2, 0x1

    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :goto_0
    return v2

    :sswitch_0
    iget-object v0, p0, Lcom/android/phone/EmergencyDialer$ActionModeCallback;->this$0:Lcom/android/phone/EmergencyDialer;

    # getter for: Lcom/android/phone/EmergencyDialer;->mEmergencyItemContainer:Lcom/android/phone/EmergencyContactItemContainer;
    invoke-static {v0}, Lcom/android/phone/EmergencyDialer;->access$100(Lcom/android/phone/EmergencyDialer;)Lcom/android/phone/EmergencyContactItemContainer;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/EmergencyDialer$ActionModeCallback;->this$0:Lcom/android/phone/EmergencyDialer;

    # getter for: Lcom/android/phone/EmergencyDialer;->mEmergencyItemContainer:Lcom/android/phone/EmergencyContactItemContainer;
    invoke-static {v0}, Lcom/android/phone/EmergencyDialer;->access$100(Lcom/android/phone/EmergencyDialer;)Lcom/android/phone/EmergencyContactItemContainer;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/phone/EmergencyContactItemContainer;->removeContacts(Z)V

    iget-object v0, p0, Lcom/android/phone/EmergencyDialer$ActionModeCallback;->this$0:Lcom/android/phone/EmergencyDialer;

    # getter for: Lcom/android/phone/EmergencyDialer;->mEmergencyItemContainer:Lcom/android/phone/EmergencyContactItemContainer;
    invoke-static {v0}, Lcom/android/phone/EmergencyDialer;->access$100(Lcom/android/phone/EmergencyDialer;)Lcom/android/phone/EmergencyContactItemContainer;

    move-result-object v0

    sget-object v1, Lcom/android/phone/EmergencyContactItemContainer$ScreenType;->NORMAL:Lcom/android/phone/EmergencyContactItemContainer$ScreenType;

    invoke-virtual {v0, v1}, Lcom/android/phone/EmergencyContactItemContainer;->setScreenType(Lcom/android/phone/EmergencyContactItemContainer$ScreenType;)V

    :cond_0
    iget-object v0, p0, Lcom/android/phone/EmergencyDialer$ActionModeCallback;->this$0:Lcom/android/phone/EmergencyDialer;

    invoke-virtual {v0}, Lcom/android/phone/EmergencyDialer;->invalidateOptionsMenu()V

    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Lcom/android/phone/EmergencyDialer$ActionModeCallback;->this$0:Lcom/android/phone/EmergencyDialer;

    # getter for: Lcom/android/phone/EmergencyDialer;->mEmergencyItemContainer:Lcom/android/phone/EmergencyContactItemContainer;
    invoke-static {v0}, Lcom/android/phone/EmergencyDialer;->access$100(Lcom/android/phone/EmergencyDialer;)Lcom/android/phone/EmergencyContactItemContainer;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/EmergencyDialer$ActionModeCallback;->this$0:Lcom/android/phone/EmergencyDialer;

    # getter for: Lcom/android/phone/EmergencyDialer;->mEmergencyItemContainer:Lcom/android/phone/EmergencyContactItemContainer;
    invoke-static {v0}, Lcom/android/phone/EmergencyDialer;->access$100(Lcom/android/phone/EmergencyDialer;)Lcom/android/phone/EmergencyContactItemContainer;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/phone/EmergencyContactItemContainer;->removeContacts(Z)V

    iget-object v0, p0, Lcom/android/phone/EmergencyDialer$ActionModeCallback;->this$0:Lcom/android/phone/EmergencyDialer;

    # getter for: Lcom/android/phone/EmergencyDialer;->mEmergencyItemContainer:Lcom/android/phone/EmergencyContactItemContainer;
    invoke-static {v0}, Lcom/android/phone/EmergencyDialer;->access$100(Lcom/android/phone/EmergencyDialer;)Lcom/android/phone/EmergencyContactItemContainer;

    move-result-object v0

    sget-object v1, Lcom/android/phone/EmergencyContactItemContainer$ScreenType;->NORMAL:Lcom/android/phone/EmergencyContactItemContainer$ScreenType;

    invoke-virtual {v0, v1}, Lcom/android/phone/EmergencyContactItemContainer;->setScreenType(Lcom/android/phone/EmergencyContactItemContainer$ScreenType;)V

    :cond_1
    iget-object v0, p0, Lcom/android/phone/EmergencyDialer$ActionModeCallback;->this$0:Lcom/android/phone/EmergencyDialer;

    invoke-virtual {v0}, Lcom/android/phone/EmergencyDialer;->invalidateOptionsMenu()V

    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x7f0a0148 -> :sswitch_0
        0x7f0a0149 -> :sswitch_1
        0x7f0a0236 -> :sswitch_0
    .end sparse-switch
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 5
    .param p1    # Landroid/view/ActionMode;
    .param p2    # Landroid/view/Menu;

    iget-object v2, p0, Lcom/android/phone/EmergencyDialer$ActionModeCallback;->this$0:Lcom/android/phone/EmergencyDialer;

    invoke-virtual {v2}, Lcom/android/phone/EmergencyDialer;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/services/telephony/common/PhoneFeature;->isKProject()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    :cond_0
    iget-object v2, p0, Lcom/android/phone/EmergencyDialer$ActionModeCallback;->this$0:Lcom/android/phone/EmergencyDialer;

    # getter for: Lcom/android/phone/EmergencyDialer;->mEmergencyItemContainer:Lcom/android/phone/EmergencyContactItemContainer;
    invoke-static {v2}, Lcom/android/phone/EmergencyDialer;->access$100(Lcom/android/phone/EmergencyDialer;)Lcom/android/phone/EmergencyContactItemContainer;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/phone/EmergencyDialer$ActionModeCallback;->this$0:Lcom/android/phone/EmergencyDialer;

    # getter for: Lcom/android/phone/EmergencyDialer;->mEmergencyItemContainer:Lcom/android/phone/EmergencyContactItemContainer;
    invoke-static {v2}, Lcom/android/phone/EmergencyDialer;->access$100(Lcom/android/phone/EmergencyDialer;)Lcom/android/phone/EmergencyContactItemContainer;

    move-result-object v2

    sget-object v3, Lcom/android/phone/EmergencyContactItemContainer$ScreenType;->REMOVE:Lcom/android/phone/EmergencyContactItemContainer$ScreenType;

    invoke-virtual {v2, v3}, Lcom/android/phone/EmergencyContactItemContainer;->setScreenType(Lcom/android/phone/EmergencyContactItemContainer$ScreenType;)V

    :cond_1
    iget-object v2, p0, Lcom/android/phone/EmergencyDialer$ActionModeCallback;->this$0:Lcom/android/phone/EmergencyDialer;

    invoke-virtual {v2}, Lcom/android/phone/EmergencyDialer;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v1

    const v2, 0x7f110001

    invoke-virtual {v1, v2, p2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    iget-object v2, p0, Lcom/android/phone/EmergencyDialer$ActionModeCallback;->mMultiSelectActionBarView:Landroid/view/View;

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/android/phone/EmergencyDialer$ActionModeCallback;->this$0:Lcom/android/phone/EmergencyDialer;

    invoke-virtual {v2}, Lcom/android/phone/EmergencyDialer;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f040002

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/EmergencyDialer$ActionModeCallback;->mMultiSelectActionBarView:Landroid/view/View;

    iget-object v3, p0, Lcom/android/phone/EmergencyDialer$ActionModeCallback;->this$0:Lcom/android/phone/EmergencyDialer;

    iget-object v2, p0, Lcom/android/phone/EmergencyDialer$ActionModeCallback;->mMultiSelectActionBarView:Landroid/view/View;

    const v4, 0x7f0a0017

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    # setter for: Lcom/android/phone/EmergencyDialer;->mActionbarTitle:Landroid/widget/TextView;
    invoke-static {v3, v2}, Lcom/android/phone/EmergencyDialer;->access$1302(Lcom/android/phone/EmergencyDialer;Landroid/widget/TextView;)Landroid/widget/TextView;

    :cond_2
    iget-object v2, p0, Lcom/android/phone/EmergencyDialer$ActionModeCallback;->mMultiSelectActionBarView:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/ActionMode;->setCustomView(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/android/phone/EmergencyDialer$ActionModeCallback;->updateSelectionMenu()V

    iget-object v2, p0, Lcom/android/phone/EmergencyDialer$ActionModeCallback;->this$0:Lcom/android/phone/EmergencyDialer;

    # getter for: Lcom/android/phone/EmergencyDialer;->mActionbarTitle:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/android/phone/EmergencyDialer;->access$1300(Lcom/android/phone/EmergencyDialer;)Landroid/widget/TextView;

    move-result-object v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/phone/EmergencyDialer$ActionModeCallback;->this$0:Lcom/android/phone/EmergencyDialer;

    # getter for: Lcom/android/phone/EmergencyDialer;->mActionbarTitle:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/android/phone/EmergencyDialer;->access$1300(Lcom/android/phone/EmergencyDialer;)Landroid/widget/TextView;

    move-result-object v2

    new-instance v3, Lcom/android/phone/EmergencyDialer$ActionModeCallback$1;

    invoke-direct {v3, p0}, Lcom/android/phone/EmergencyDialer$ActionModeCallback$1;-><init>(Lcom/android/phone/EmergencyDialer$ActionModeCallback;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_3
    iget-object v2, p0, Lcom/android/phone/EmergencyDialer$ActionModeCallback;->this$0:Lcom/android/phone/EmergencyDialer;

    # setter for: Lcom/android/phone/EmergencyDialer;->mActionMode:Landroid/view/ActionMode;
    invoke-static {v2, p1}, Lcom/android/phone/EmergencyDialer;->access$1402(Lcom/android/phone/EmergencyDialer;Landroid/view/ActionMode;)Landroid/view/ActionMode;

    const/4 v2, 0x1

    return v2
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 3
    .param p1    # Landroid/view/ActionMode;

    const/4 v2, 0x0

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/phone/EmergencyDialer$ActionModeCallback;->this$0:Lcom/android/phone/EmergencyDialer;

    # getter for: Lcom/android/phone/EmergencyDialer;->mActionMode:Landroid/view/ActionMode;
    invoke-static {v0}, Lcom/android/phone/EmergencyDialer;->access$1400(Lcom/android/phone/EmergencyDialer;)Landroid/view/ActionMode;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/EmergencyDialer$ActionModeCallback;->this$0:Lcom/android/phone/EmergencyDialer;

    # setter for: Lcom/android/phone/EmergencyDialer;->mActionMode:Landroid/view/ActionMode;
    invoke-static {v0, v2}, Lcom/android/phone/EmergencyDialer;->access$1402(Lcom/android/phone/EmergencyDialer;Landroid/view/ActionMode;)Landroid/view/ActionMode;

    :cond_0
    iget-object v0, p0, Lcom/android/phone/EmergencyDialer$ActionModeCallback;->mMultiSelectActionBarView:Landroid/view/View;

    if-eqz v0, :cond_1

    iput-object v2, p0, Lcom/android/phone/EmergencyDialer$ActionModeCallback;->mMultiSelectActionBarView:Landroid/view/View;

    :cond_1
    iget-object v0, p0, Lcom/android/phone/EmergencyDialer$ActionModeCallback;->this$0:Lcom/android/phone/EmergencyDialer;

    # getter for: Lcom/android/phone/EmergencyDialer;->mEmergencyItemContainer:Lcom/android/phone/EmergencyContactItemContainer;
    invoke-static {v0}, Lcom/android/phone/EmergencyDialer;->access$100(Lcom/android/phone/EmergencyDialer;)Lcom/android/phone/EmergencyContactItemContainer;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/phone/EmergencyDialer$ActionModeCallback;->this$0:Lcom/android/phone/EmergencyDialer;

    # getter for: Lcom/android/phone/EmergencyDialer;->mClearedByCode:Z
    invoke-static {v0}, Lcom/android/phone/EmergencyDialer;->access$1500(Lcom/android/phone/EmergencyDialer;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/phone/EmergencyDialer$ActionModeCallback;->this$0:Lcom/android/phone/EmergencyDialer;

    # getter for: Lcom/android/phone/EmergencyDialer;->mEmergencyItemContainer:Lcom/android/phone/EmergencyContactItemContainer;
    invoke-static {v0}, Lcom/android/phone/EmergencyDialer;->access$100(Lcom/android/phone/EmergencyDialer;)Lcom/android/phone/EmergencyContactItemContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/EmergencyContactItemContainer;->reset()V

    :cond_2
    iget-object v0, p0, Lcom/android/phone/EmergencyDialer$ActionModeCallback;->this$0:Lcom/android/phone/EmergencyDialer;

    # setter for: Lcom/android/phone/EmergencyDialer;->mClearedByCode:Z
    invoke-static {v0, v1}, Lcom/android/phone/EmergencyDialer;->access$1502(Lcom/android/phone/EmergencyDialer;Z)Z

    :cond_3
    iget-object v0, p0, Lcom/android/phone/EmergencyDialer$ActionModeCallback;->this$0:Lcom/android/phone/EmergencyDialer;

    # setter for: Lcom/android/phone/EmergencyDialer;->mDeleteModeFromMenu:Z
    invoke-static {v0, v1}, Lcom/android/phone/EmergencyDialer;->access$1602(Lcom/android/phone/EmergencyDialer;Z)Z

    iget-object v0, p0, Lcom/android/phone/EmergencyDialer$ActionModeCallback;->this$0:Lcom/android/phone/EmergencyDialer;

    invoke-virtual {v0}, Lcom/android/phone/EmergencyDialer;->invalidateOptionsMenu()V

    return-void
.end method

.method public onItemCheckedStateChanged(Landroid/view/ActionMode;IJZ)V
    .locals 0
    .param p1    # Landroid/view/ActionMode;
    .param p2    # I
    .param p3    # J
    .param p5    # Z

    return-void
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 5
    .param p1    # Landroid/view/ActionMode;
    .param p2    # Landroid/view/Menu;

    const v4, 0x7f0a0148

    const v1, 0x7f0a0236

    const/4 v3, 0x1

    const/4 v2, 0x0

    const v0, 0x7f0a0235

    invoke-interface {p2, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-interface {p2, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-interface {p2, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/android/phone/EmergencyDialer$ActionModeCallback;->this$0:Lcom/android/phone/EmergencyDialer;

    # getter for: Lcom/android/phone/EmergencyDialer;->mDeleteModeFromMenu:Z
    invoke-static {v0}, Lcom/android/phone/EmergencyDialer;->access$1600(Lcom/android/phone/EmergencyDialer;)Z

    move-result v0

    if-ne v0, v3, :cond_1

    iget-object v0, p0, Lcom/android/phone/EmergencyDialer$ActionModeCallback;->this$0:Lcom/android/phone/EmergencyDialer;

    # invokes: Lcom/android/phone/EmergencyDialer;->getCheckedCount()I
    invoke-static {v0}, Lcom/android/phone/EmergencyDialer;->access$1200(Lcom/android/phone/EmergencyDialer;)I

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p2, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-interface {p2, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    :goto_0
    invoke-virtual {p0}, Lcom/android/phone/EmergencyDialer$ActionModeCallback;->updateSelectionMenu()V

    return v3

    :cond_0
    invoke-interface {p2, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-interface {p2, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_0

    :cond_1
    invoke-interface {p2, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    iget-object v0, p0, Lcom/android/phone/EmergencyDialer$ActionModeCallback;->this$0:Lcom/android/phone/EmergencyDialer;

    # invokes: Lcom/android/phone/EmergencyDialer;->getCheckedCount()I
    invoke-static {v0}, Lcom/android/phone/EmergencyDialer;->access$1200(Lcom/android/phone/EmergencyDialer;)I

    move-result v0

    if-nez v0, :cond_2

    invoke-interface {p2, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0

    :cond_2
    invoke-interface {p2, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method public updateSelectionMenu()V
    .locals 6

    iget-object v2, p0, Lcom/android/phone/EmergencyDialer$ActionModeCallback;->this$0:Lcom/android/phone/EmergencyDialer;

    # invokes: Lcom/android/phone/EmergencyDialer;->getCheckedCount()I
    invoke-static {v2}, Lcom/android/phone/EmergencyDialer;->access$1200(Lcom/android/phone/EmergencyDialer;)I

    move-result v0

    iget-object v2, p0, Lcom/android/phone/EmergencyDialer$ActionModeCallback;->this$0:Lcom/android/phone/EmergencyDialer;

    invoke-virtual {v2}, Lcom/android/phone/EmergencyDialer;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090a37

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/EmergencyDialer$ActionModeCallback;->this$0:Lcom/android/phone/EmergencyDialer;

    # getter for: Lcom/android/phone/EmergencyDialer;->mActionbarTitle:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/android/phone/EmergencyDialer;->access$1300(Lcom/android/phone/EmergencyDialer;)Landroid/widget/TextView;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
