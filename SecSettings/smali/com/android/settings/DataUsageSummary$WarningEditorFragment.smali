.class public Lcom/android/settings/DataUsageSummary$WarningEditorFragment;
.super Landroid/app/DialogFragment;
.source "DataUsageSummary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/DataUsageSummary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WarningEditorFragment"
.end annotation


# static fields
.field static final dialog:Lcom/android/settings/DataUsageSummary$WarningEditorFragment;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/settings/DataUsageSummary$WarningEditorFragment;

    invoke-direct {v0}, Lcom/android/settings/DataUsageSummary$WarningEditorFragment;-><init>()V

    sput-object v0, Lcom/android/settings/DataUsageSummary$WarningEditorFragment;->dialog:Lcom/android/settings/DataUsageSummary$WarningEditorFragment;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static close(Lcom/android/settings/DataUsageSummary;)V
    .locals 2

    sget-object v0, Lcom/android/settings/DataUsageSummary$WarningEditorFragment;->dialog:Lcom/android/settings/DataUsageSummary$WarningEditorFragment;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/settings/DataUsageSummary$WarningEditorFragment;->dialog:Lcom/android/settings/DataUsageSummary$WarningEditorFragment;

    invoke-virtual {v0}, Landroid/app/Fragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v0, Lcom/android/settings/DataUsageSummary$WarningEditorFragment;->dialog:Lcom/android/settings/DataUsageSummary$WarningEditorFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/app/Fragment;->setTargetFragment(Landroid/app/Fragment;I)V

    sget-object v0, Lcom/android/settings/DataUsageSummary$WarningEditorFragment;->dialog:Lcom/android/settings/DataUsageSummary$WarningEditorFragment;

    invoke-virtual {v0}, Landroid/app/DialogFragment;->dismiss()V

    goto :goto_0
.end method

.method public static show(Lcom/android/settings/DataUsageSummary;)V
    .locals 4

    invoke-virtual {p0}, Landroid/app/Fragment;->isAdded()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "template"

    # getter for: Lcom/android/settings/DataUsageSummary;->mTemplate:Landroid/net/NetworkTemplate;
    invoke-static {p0}, Lcom/android/settings/DataUsageSummary;->access$4600(Lcom/android/settings/DataUsageSummary;)Landroid/net/NetworkTemplate;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    sget-object v1, Lcom/android/settings/DataUsageSummary$WarningEditorFragment;->dialog:Lcom/android/settings/DataUsageSummary$WarningEditorFragment;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/settings/DataUsageSummary$WarningEditorFragment;->dialog:Lcom/android/settings/DataUsageSummary$WarningEditorFragment;

    invoke-virtual {v1}, Landroid/app/Fragment;->isAdded()Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/android/settings/DataUsageSummary$WarningEditorFragment;->dialog:Lcom/android/settings/DataUsageSummary$WarningEditorFragment;

    invoke-virtual {v1, v0}, Landroid/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    sget-object v1, Lcom/android/settings/DataUsageSummary$WarningEditorFragment;->dialog:Lcom/android/settings/DataUsageSummary$WarningEditorFragment;

    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2}, Landroid/app/Fragment;->setTargetFragment(Landroid/app/Fragment;I)V

    sget-object v1, Lcom/android/settings/DataUsageSummary$WarningEditorFragment;->dialog:Lcom/android/settings/DataUsageSummary$WarningEditorFragment;

    invoke-virtual {p0}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-string v3, "warningEditor"

    invoke-virtual {v1, v2, v3}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 18

    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v6

    check-cast v6, Lcom/android/settings/DataUsageSummary;

    # getter for: Lcom/android/settings/DataUsageSummary;->mPolicyEditor:Lcom/android/settings/net/NetworkPolicyEditor;
    invoke-static {v6}, Lcom/android/settings/DataUsageSummary;->access$4700(Lcom/android/settings/DataUsageSummary;)Lcom/android/settings/net/NetworkPolicyEditor;

    move-result-object v4

    new-instance v7, Landroid/app/AlertDialog$Builder;

    invoke-direct {v7, v8}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v7}, Landroid/app/AlertDialog$Builder;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v9

    const v1, 0x7f04006e

    const/4 v2, 0x0

    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v9, v1, v2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v13

    const v1, 0x7f0b014d

    invoke-virtual {v13, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/NumberPicker;

    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "template"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Landroid/net/NetworkTemplate;

    invoke-virtual {v4, v5}, Lcom/android/settings/net/NetworkPolicyEditor;->getPolicyWarningBytes(Landroid/net/NetworkTemplate;)J

    move-result-wide v14

    invoke-virtual {v4, v5}, Lcom/android/settings/net/NetworkPolicyEditor;->getPolicyLimitBytes(Landroid/net/NetworkTemplate;)J

    move-result-wide v10

    const v12, 0x18fff

    invoke-virtual {v3}, Landroid/widget/NumberPicker;->getMText()Landroid/widget/EditText;

    move-result-object v1

    const-string v2, "inputType=YearDateTime_edittext"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setPrivateImeOptions(Ljava/lang/String;)V

    const/4 v1, 0x6

    invoke-virtual {v3, v1}, Landroid/widget/NumberPicker;->twSetMaxInputLength(I)V

    const/4 v1, 0x0

    invoke-virtual {v3, v1}, Landroid/widget/NumberPicker;->setMinValue(I)V

    const-wide/16 v1, -0x1

    cmp-long v1, v10, v1

    if-eqz v1, :cond_0

    const-wide/32 v1, 0x100000

    div-long v1, v10, v1

    long-to-int v1, v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v3, v1}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    :goto_0
    const-wide/32 v1, 0x100000

    div-long v1, v14, v1

    long-to-int v0, v1

    move/from16 v16, v0

    move/from16 v0, v16

    if-le v0, v12, :cond_1

    invoke-virtual {v3, v12}, Landroid/widget/NumberPicker;->setValue(I)V

    :goto_1
    const/4 v1, 0x0

    invoke-virtual {v3, v1}, Landroid/widget/NumberPicker;->setWrapSelectorWheel(Z)V

    const v1, 0x7f090bf6

    invoke-virtual {v7, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v7, v13}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    const v17, 0x7f090bf5

    new-instance v1, Lcom/android/settings/DataUsageSummary$WarningEditorFragment$1;

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/settings/DataUsageSummary$WarningEditorFragment$1;-><init>(Lcom/android/settings/DataUsageSummary$WarningEditorFragment;Landroid/widget/NumberPicker;Lcom/android/settings/net/NetworkPolicyEditor;Landroid/net/NetworkTemplate;Lcom/android/settings/DataUsageSummary;)V

    move/from16 v0, v17

    invoke-virtual {v7, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v7}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    return-object v1

    :cond_0
    invoke-virtual {v3, v12}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    goto :goto_0

    :cond_1
    move/from16 v0, v16

    invoke-virtual {v3, v0}, Landroid/widget/NumberPicker;->setValue(I)V

    goto :goto_1
.end method
