.class public Lcom/android/settings/PenHelpFragment;
.super Landroid/app/Fragment;
.source "PenHelpFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/PenHelpFragment$PenHelpItem;
    }
.end annotation


# instance fields
.field private mPenHelpType:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v2, "pen_help_menu"

    const-string v3, "hovering"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/PenHelpFragment;->mPenHelpType:Ljava/lang/String;

    :goto_0
    iget-object v2, p0, Lcom/android/settings/PenHelpFragment;->mPenHelpType:Ljava/lang/String;

    if-nez v2, :cond_0

    const-string v2, "hovering"

    iput-object v2, p0, Lcom/android/settings/PenHelpFragment;->mPenHelpType:Ljava/lang/String;

    :cond_0
    const-string v2, "PenHelpFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mPenHelpType"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/PenHelpFragment;->mPenHelpType:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "pen_help_menu"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/PenHelpFragment;->mPenHelpType:Ljava/lang/String;

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 22

    const/16 v17, 0x0

    const-string v20, "hovering"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/PenHelpFragment;->mPenHelpType:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_1

    const v20, 0x7f040183

    const/16 v21, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v17

    const v20, 0x7f0b03a6

    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Button;

    const/16 v20, 0x2

    move/from16 v0, v20

    invoke-virtual {v7, v0}, Landroid/view/View;->setHoverPopupType(I)V

    invoke-virtual {v7}, Landroid/widget/TextView;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v20

    const/16 v21, 0x5051

    invoke-virtual/range {v20 .. v21}, Landroid/widget/HoverPopupWindow;->setPopupGravity(I)V

    invoke-virtual {v7}, Landroid/widget/TextView;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v20

    const v21, 0x7f090f73

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Landroid/widget/HoverPopupWindow;->setContent(Ljava/lang/CharSequence;)V

    const v20, 0x7f0b021b

    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    new-instance v14, Lcom/android/settings/PenHelpFragment$PenHelpItem;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v14, v0, v1}, Lcom/android/settings/PenHelpFragment$PenHelpItem;-><init>(Lcom/android/settings/PenHelpFragment;Landroid/view/LayoutInflater;)V

    const v20, 0x7f090f74

    move/from16 v0, v20

    invoke-virtual {v14, v0}, Lcom/android/settings/PenHelpFragment$PenHelpItem;->setTitleText(I)V

    const v20, 0x7f090f75

    move/from16 v0, v20

    invoke-virtual {v14, v0}, Lcom/android/settings/PenHelpFragment$PenHelpItem;->setContentText(I)V

    const v20, 0x7f0201ae

    move/from16 v0, v20

    invoke-virtual {v14, v0}, Lcom/android/settings/PenHelpFragment$PenHelpItem;->setContentImage(I)V

    invoke-virtual {v14}, Lcom/android/settings/PenHelpFragment$PenHelpItem;->getPenHelpView()Landroid/view/View;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance v15, Lcom/android/settings/PenHelpFragment$PenHelpItem;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v15, v0, v1}, Lcom/android/settings/PenHelpFragment$PenHelpItem;-><init>(Lcom/android/settings/PenHelpFragment;Landroid/view/LayoutInflater;)V

    const v20, 0x7f090f76

    move/from16 v0, v20

    invoke-virtual {v15, v0}, Lcom/android/settings/PenHelpFragment$PenHelpItem;->setContentText(I)V

    const v20, 0x7f0201af

    move/from16 v0, v20

    invoke-virtual {v15, v0}, Lcom/android/settings/PenHelpFragment$PenHelpItem;->setContentImage(I)V

    const/16 v20, 0x8

    move/from16 v0, v20

    invoke-virtual {v15, v0}, Lcom/android/settings/PenHelpFragment$PenHelpItem;->setTitleVisibility(I)V

    invoke-virtual {v15}, Lcom/android/settings/PenHelpFragment$PenHelpItem;->getPenHelpView()Landroid/view/View;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance v9, Lcom/android/settings/PenHelpFragment$PenHelpItem;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v9, v0, v1}, Lcom/android/settings/PenHelpFragment$PenHelpItem;-><init>(Lcom/android/settings/PenHelpFragment;Landroid/view/LayoutInflater;)V

    const v20, 0x7f090f77

    move/from16 v0, v20

    invoke-virtual {v9, v0}, Lcom/android/settings/PenHelpFragment$PenHelpItem;->setTitleText(I)V

    const v20, 0x7f090f78

    move/from16 v0, v20

    invoke-virtual {v9, v0}, Lcom/android/settings/PenHelpFragment$PenHelpItem;->setContentText(I)V

    const v20, 0x7f02055a

    move/from16 v0, v20

    invoke-virtual {v9, v0}, Lcom/android/settings/PenHelpFragment$PenHelpItem;->setContentImage(I)V

    const/16 v20, 0x1

    move/from16 v0, v20

    invoke-virtual {v9, v0}, Lcom/android/settings/PenHelpFragment$PenHelpItem;->usePlayButton(Z)V

    invoke-virtual {v9}, Lcom/android/settings/PenHelpFragment$PenHelpItem;->getPenHelpView()Landroid/view/View;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance v19, Lcom/android/settings/PenHelpFragment$PenHelpItem;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/settings/PenHelpFragment$PenHelpItem;-><init>(Lcom/android/settings/PenHelpFragment;Landroid/view/LayoutInflater;)V

    const v20, 0x7f090f79

    invoke-virtual/range {v19 .. v20}, Lcom/android/settings/PenHelpFragment$PenHelpItem;->setTitleText(I)V

    const v20, 0x7f090f7a

    invoke-virtual/range {v19 .. v20}, Lcom/android/settings/PenHelpFragment$PenHelpItem;->setContentText(I)V

    const v20, 0x7f02055b

    invoke-virtual/range {v19 .. v20}, Lcom/android/settings/PenHelpFragment$PenHelpItem;->setContentImage(I)V

    const/16 v20, 0x1

    invoke-virtual/range {v19 .. v20}, Lcom/android/settings/PenHelpFragment$PenHelpItem;->usePlayButton(Z)V

    invoke-virtual/range {v19 .. v19}, Lcom/android/settings/PenHelpFragment$PenHelpItem;->getPenHelpView()Landroid/view/View;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance v8, Lcom/android/settings/PenHelpFragment$PenHelpItem;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v8, v0, v1}, Lcom/android/settings/PenHelpFragment$PenHelpItem;-><init>(Lcom/android/settings/PenHelpFragment;Landroid/view/LayoutInflater;)V

    const v20, 0x7f090f7b

    move/from16 v0, v20

    invoke-virtual {v8, v0}, Lcom/android/settings/PenHelpFragment$PenHelpItem;->setTitleText(I)V

    const v20, 0x7f090f7c

    move/from16 v0, v20

    invoke-virtual {v8, v0}, Lcom/android/settings/PenHelpFragment$PenHelpItem;->setContentText(I)V

    const v20, 0x7f0201b4

    move/from16 v0, v20

    invoke-virtual {v8, v0}, Lcom/android/settings/PenHelpFragment$PenHelpItem;->setContentImage(I)V

    invoke-virtual {v8}, Lcom/android/settings/PenHelpFragment$PenHelpItem;->getPenHelpView()Landroid/view/View;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance v10, Lcom/android/settings/PenHelpFragment$PenHelpItem;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v10, v0, v1}, Lcom/android/settings/PenHelpFragment$PenHelpItem;-><init>(Lcom/android/settings/PenHelpFragment;Landroid/view/LayoutInflater;)V

    const v20, 0x7f090f7d

    move/from16 v0, v20

    invoke-virtual {v10, v0}, Lcom/android/settings/PenHelpFragment$PenHelpItem;->setTitleText(I)V

    const v20, 0x7f090f7e

    move/from16 v0, v20

    invoke-virtual {v10, v0}, Lcom/android/settings/PenHelpFragment$PenHelpItem;->setContentText(I)V

    const v20, 0x7f0201b5

    move/from16 v0, v20

    invoke-virtual {v10, v0}, Lcom/android/settings/PenHelpFragment$PenHelpItem;->setContentImage(I)V

    invoke-virtual {v10}, Lcom/android/settings/PenHelpFragment$PenHelpItem;->getPenHelpView()Landroid/view/View;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_0
    :goto_0
    return-object v17

    :cond_1
    const-string v20, "gesture"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/PenHelpFragment;->mPenHelpType:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_2

    const v20, 0x7f040182

    const/16 v21, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v17

    const v20, 0x7f0b021b

    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    new-instance v5, Lcom/android/settings/PenHelpFragment$PenHelpItem;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v5, v0, v1}, Lcom/android/settings/PenHelpFragment$PenHelpItem;-><init>(Lcom/android/settings/PenHelpFragment;Landroid/view/LayoutInflater;)V

    const v20, 0x7f090f81

    move/from16 v0, v20

    invoke-virtual {v5, v0}, Lcom/android/settings/PenHelpFragment$PenHelpItem;->setTitleText(I)V

    const v20, 0x7f090f82

    move/from16 v0, v20

    invoke-virtual {v5, v0}, Lcom/android/settings/PenHelpFragment$PenHelpItem;->setContentText(I)V

    const v20, 0x7f02019e

    move/from16 v0, v20

    invoke-virtual {v5, v0}, Lcom/android/settings/PenHelpFragment$PenHelpItem;->setContentImage(I)V

    invoke-virtual {v5}, Lcom/android/settings/PenHelpFragment$PenHelpItem;->getPenHelpView()Landroid/view/View;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance v11, Lcom/android/settings/PenHelpFragment$PenHelpItem;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v11, v0, v1}, Lcom/android/settings/PenHelpFragment$PenHelpItem;-><init>(Lcom/android/settings/PenHelpFragment;Landroid/view/LayoutInflater;)V

    const v20, 0x7f090f83

    move/from16 v0, v20

    invoke-virtual {v11, v0}, Lcom/android/settings/PenHelpFragment$PenHelpItem;->setTitleText(I)V

    const v20, 0x7f090f84

    move/from16 v0, v20

    invoke-virtual {v11, v0}, Lcom/android/settings/PenHelpFragment$PenHelpItem;->setContentText(I)V

    const v20, 0x7f02019f

    move/from16 v0, v20

    invoke-virtual {v11, v0}, Lcom/android/settings/PenHelpFragment$PenHelpItem;->setContentImage(I)V

    invoke-virtual {v11}, Lcom/android/settings/PenHelpFragment$PenHelpItem;->getPenHelpView()Landroid/view/View;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance v12, Lcom/android/settings/PenHelpFragment$PenHelpItem;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v12, v0, v1}, Lcom/android/settings/PenHelpFragment$PenHelpItem;-><init>(Lcom/android/settings/PenHelpFragment;Landroid/view/LayoutInflater;)V

    const v20, 0x7f090f85

    move/from16 v0, v20

    invoke-virtual {v12, v0}, Lcom/android/settings/PenHelpFragment$PenHelpItem;->setTitleText(I)V

    const v20, 0x7f090f86

    move/from16 v0, v20

    invoke-virtual {v12, v0}, Lcom/android/settings/PenHelpFragment$PenHelpItem;->setContentText(I)V

    const v20, 0x7f0201a0

    move/from16 v0, v20

    invoke-virtual {v12, v0}, Lcom/android/settings/PenHelpFragment$PenHelpItem;->setContentImage(I)V

    invoke-virtual {v12}, Lcom/android/settings/PenHelpFragment$PenHelpItem;->getPenHelpView()Landroid/view/View;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance v13, Lcom/android/settings/PenHelpFragment$PenHelpItem;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v13, v0, v1}, Lcom/android/settings/PenHelpFragment$PenHelpItem;-><init>(Lcom/android/settings/PenHelpFragment;Landroid/view/LayoutInflater;)V

    const v20, 0x7f090f87

    move/from16 v0, v20

    invoke-virtual {v13, v0}, Lcom/android/settings/PenHelpFragment$PenHelpItem;->setTitleText(I)V

    const v20, 0x7f090f88

    move/from16 v0, v20

    invoke-virtual {v13, v0}, Lcom/android/settings/PenHelpFragment$PenHelpItem;->setContentText(I)V

    const v20, 0x7f0201a1

    move/from16 v0, v20

    invoke-virtual {v13, v0}, Lcom/android/settings/PenHelpFragment$PenHelpItem;->setContentImage(I)V

    invoke-virtual {v13}, Lcom/android/settings/PenHelpFragment$PenHelpItem;->getPenHelpView()Landroid/view/View;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance v3, Lcom/android/settings/PenHelpFragment$PenHelpItem;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v3, v0, v1}, Lcom/android/settings/PenHelpFragment$PenHelpItem;-><init>(Lcom/android/settings/PenHelpFragment;Landroid/view/LayoutInflater;)V

    const v20, 0x7f090f89

    move/from16 v0, v20

    invoke-virtual {v3, v0}, Lcom/android/settings/PenHelpFragment$PenHelpItem;->setTitleText(I)V

    const v20, 0x7f090f8a

    move/from16 v0, v20

    invoke-virtual {v3, v0}, Lcom/android/settings/PenHelpFragment$PenHelpItem;->setContentText(I)V

    const v20, 0x7f0201a2

    move/from16 v0, v20

    invoke-virtual {v3, v0}, Lcom/android/settings/PenHelpFragment$PenHelpItem;->setContentImage(I)V

    invoke-virtual {v3}, Lcom/android/settings/PenHelpFragment$PenHelpItem;->getPenHelpView()Landroid/view/View;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance v4, Lcom/android/settings/PenHelpFragment$PenHelpItem;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v4, v0, v1}, Lcom/android/settings/PenHelpFragment$PenHelpItem;-><init>(Lcom/android/settings/PenHelpFragment;Landroid/view/LayoutInflater;)V

    const v20, 0x7f090f8b

    move/from16 v0, v20

    invoke-virtual {v4, v0}, Lcom/android/settings/PenHelpFragment$PenHelpItem;->setTitleText(I)V

    const v20, 0x7f090f8c

    move/from16 v0, v20

    invoke-virtual {v4, v0}, Lcom/android/settings/PenHelpFragment$PenHelpItem;->setContentText(I)V

    const v20, 0x7f020558

    move/from16 v0, v20

    invoke-virtual {v4, v0}, Lcom/android/settings/PenHelpFragment$PenHelpItem;->setContentImage(I)V

    const/16 v20, 0x1

    move/from16 v0, v20

    invoke-virtual {v4, v0}, Lcom/android/settings/PenHelpFragment$PenHelpItem;->usePlayButton(Z)V

    invoke-virtual {v4}, Lcom/android/settings/PenHelpFragment$PenHelpItem;->getPenHelpView()Landroid/view/View;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance v16, Lcom/android/settings/PenHelpFragment$PenHelpItem;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/settings/PenHelpFragment$PenHelpItem;-><init>(Lcom/android/settings/PenHelpFragment;Landroid/view/LayoutInflater;)V

    const v20, 0x7f090f8d

    move-object/from16 v0, v16

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/settings/PenHelpFragment$PenHelpItem;->setTitleText(I)V

    const v20, 0x7f090f8e

    move-object/from16 v0, v16

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/settings/PenHelpFragment$PenHelpItem;->setContentText(I)V

    const v20, 0x7f020559

    move-object/from16 v0, v16

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/settings/PenHelpFragment$PenHelpItem;->setContentImage(I)V

    const/16 v20, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/settings/PenHelpFragment$PenHelpItem;->usePlayButton(Z)V

    invoke-virtual/range {v16 .. v16}, Lcom/android/settings/PenHelpFragment$PenHelpItem;->getPenHelpView()Landroid/view/View;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto/16 :goto_0

    :cond_2
    const-string v20, "quickcommand"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/PenHelpFragment;->mPenHelpType:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_0

    const v20, 0x7f040185

    const/16 v21, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v17

    const v20, 0x7f0b021b

    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    new-instance v13, Lcom/android/settings/PenHelpFragment$PenHelpItem;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v13, v0, v1}, Lcom/android/settings/PenHelpFragment$PenHelpItem;-><init>(Lcom/android/settings/PenHelpFragment;Landroid/view/LayoutInflater;)V

    const v20, 0x7f090f90

    move/from16 v0, v20

    invoke-virtual {v13, v0}, Lcom/android/settings/PenHelpFragment$PenHelpItem;->setTitleText(I)V

    const v20, 0x7f090f91

    move/from16 v0, v20

    invoke-virtual {v13, v0}, Lcom/android/settings/PenHelpFragment$PenHelpItem;->setContentText(I)V

    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/android/settings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v20

    if-eqz v20, :cond_3

    const v20, 0x7f020552

    move/from16 v0, v20

    invoke-virtual {v13, v0}, Lcom/android/settings/PenHelpFragment$PenHelpItem;->setContentImage(I)V

    :goto_1
    const/16 v20, 0x1

    move/from16 v0, v20

    invoke-virtual {v13, v0}, Lcom/android/settings/PenHelpFragment$PenHelpItem;->usePlayButton(Z)V

    invoke-virtual {v13}, Lcom/android/settings/PenHelpFragment$PenHelpItem;->getPenHelpView()Landroid/view/View;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance v18, Lcom/android/settings/PenHelpFragment$PenHelpItem;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/settings/PenHelpFragment$PenHelpItem;-><init>(Lcom/android/settings/PenHelpFragment;Landroid/view/LayoutInflater;)V

    const v20, 0x7f090f92

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/settings/PenHelpFragment$PenHelpItem;->setTitleText(I)V

    const v20, 0x7f090f93

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/settings/PenHelpFragment$PenHelpItem;->setContentText(I)V

    const v20, 0x7f02018e

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/settings/PenHelpFragment$PenHelpItem;->setContentImage(I)V

    invoke-virtual/range {v18 .. v18}, Lcom/android/settings/PenHelpFragment$PenHelpItem;->getPenHelpView()Landroid/view/View;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto/16 :goto_0

    :cond_3
    const v20, 0x7f020553

    move/from16 v0, v20

    invoke-virtual {v13, v0}, Lcom/android/settings/PenHelpFragment$PenHelpItem;->setContentImage(I)V

    goto :goto_1
.end method
