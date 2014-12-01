.class Landroid/preference/PreferenceActivity$7;
.super Ljava/lang/Object;
.source "PreferenceActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/preference/PreferenceActivity;


# direct methods
.method constructor <init>(Landroid/preference/PreferenceActivity;)V
    .locals 0

    iput-object p1, p0, Landroid/preference/PreferenceActivity$7;->this$0:Landroid/preference/PreferenceActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 25

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/preference/PreferenceActivity$7;->this$0:Landroid/preference/PreferenceActivity;

    move-object/from16 v23, v0

    # getter for: Landroid/preference/PreferenceActivity;->mEnableSplitBar:Z
    invoke-static/range {v23 .. v23}, Landroid/preference/PreferenceActivity;->access$600(Landroid/preference/PreferenceActivity;)Z

    move-result v23

    if-nez v23, :cond_0

    const/16 v23, 0x0

    :goto_0
    return v23

    :cond_0
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/4 v15, 0x0

    move-object/from16 v0, p1

    instance-of v0, v0, Landroid/view/ViewGroup;

    move/from16 v23, v0

    if-eqz v23, :cond_1

    check-cast p1, Landroid/view/ViewGroup;

    const/16 v23, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v15

    :cond_1
    if-nez v15, :cond_2

    const/16 v23, 0x0

    goto :goto_0

    :cond_2
    if-nez v2, :cond_3

    const/16 v23, 0x0

    move/from16 v0, v23

    invoke-virtual {v15, v0}, Landroid/view/View;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/preference/PreferenceActivity$7;->this$0:Landroid/preference/PreferenceActivity;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    # setter for: Landroid/preference/PreferenceActivity;->mUpdateLayoutBySplitChange:Z
    invoke-static/range {v23 .. v24}, Landroid/preference/PreferenceActivity;->access$1002(Landroid/preference/PreferenceActivity;Z)Z

    :goto_1
    const/16 v23, 0x1

    goto :goto_0

    :cond_3
    const/16 v23, 0x2

    move/from16 v0, v23

    if-ne v2, v0, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/preference/PreferenceActivity$7;->this$0:Landroid/preference/PreferenceActivity;

    move-object/from16 v23, v0

    # getter for: Landroid/preference/PreferenceActivity;->mSplitBarView:Landroid/view/View;
    invoke-static/range {v23 .. v23}, Landroid/preference/PreferenceActivity;->access$800(Landroid/preference/PreferenceActivity;)Landroid/view/View;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/view/View;->getWidth()I

    move-result v16

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/preference/PreferenceActivity$7;->this$0:Landroid/preference/PreferenceActivity;

    move-object/from16 v23, v0

    # getter for: Landroid/preference/PreferenceActivity;->mSplitBarView:Landroid/view/View;
    invoke-static/range {v23 .. v23}, Landroid/preference/PreferenceActivity;->access$800(Landroid/preference/PreferenceActivity;)Landroid/view/View;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v23

    check-cast v23, Landroid/view/View;

    check-cast v23, Landroid/view/View;

    invoke-virtual/range {v23 .. v23}, Landroid/view/View;->getWidth()I

    move-result v12

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getX()F

    move-result v19

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/preference/PreferenceActivity$7;->this$0:Landroid/preference/PreferenceActivity;

    move-object/from16 v23, v0

    # getter for: Landroid/preference/PreferenceActivity;->mSplitBarView:Landroid/view/View;
    invoke-static/range {v23 .. v23}, Landroid/preference/PreferenceActivity;->access$800(Landroid/preference/PreferenceActivity;)Landroid/view/View;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/view/View;->getX()F

    move-result v11

    div-int/lit8 v23, v16, 0x2

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    add-float v10, v11, v23

    add-float v20, v11, v19

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v23, v0

    cmpl-float v23, v19, v23

    if-lez v23, :cond_8

    int-to-float v0, v12

    move/from16 v23, v0

    cmpg-float v23, v20, v23

    if-gtz v23, :cond_8

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v23, v0

    sub-float v23, v19, v23

    add-float v10, v10, v23

    int-to-float v0, v12

    move/from16 v23, v0

    div-float v17, v10, v23

    const v23, 0x3f28f5c3

    cmpl-float v23, v17, v23

    if-lez v23, :cond_7

    int-to-float v0, v12

    move/from16 v23, v0

    const v24, 0x3f28f5c3

    mul-float v10, v23, v24

    :cond_4
    :goto_2
    div-int/lit8 v23, v16, 0x2

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    sub-float v11, v10, v23

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/preference/PreferenceActivity$7;->this$0:Landroid/preference/PreferenceActivity;

    move-object/from16 v23, v0

    # getter for: Landroid/preference/PreferenceActivity;->mSplitBarView:Landroid/view/View;
    invoke-static/range {v23 .. v23}, Landroid/preference/PreferenceActivity;->access$800(Landroid/preference/PreferenceActivity;)Landroid/view/View;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v11}, Landroid/view/View;->setX(F)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/preference/PreferenceActivity$7;->this$0:Landroid/preference/PreferenceActivity;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    # setter for: Landroid/preference/PreferenceActivity;->mUpdateLayoutBySplitChange:Z
    invoke-static/range {v23 .. v24}, Landroid/preference/PreferenceActivity;->access$1002(Landroid/preference/PreferenceActivity;Z)Z

    :cond_5
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/preference/PreferenceActivity$7;->this$0:Landroid/preference/PreferenceActivity;

    move-object/from16 v23, v0

    # getter for: Landroid/preference/PreferenceActivity;->mUpdateLayoutBySplitChange:Z
    invoke-static/range {v23 .. v23}, Landroid/preference/PreferenceActivity;->access$1000(Landroid/preference/PreferenceActivity;)Z

    move-result v23

    if-eqz v23, :cond_6

    const/16 v23, 0x1

    # setter for: Landroid/preference/PreferenceActivity;->mUserUpdateSplit:Z
    invoke-static/range {v23 .. v23}, Landroid/preference/PreferenceActivity;->access$1102(Z)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/preference/PreferenceActivity$7;->this$0:Landroid/preference/PreferenceActivity;

    move-object/from16 v23, v0

    const v24, 0x10203a1

    invoke-virtual/range {v23 .. v24}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout$LayoutParams;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/preference/PreferenceActivity$7;->this$0:Landroid/preference/PreferenceActivity;

    move-object/from16 v23, v0

    # getter for: Landroid/preference/PreferenceActivity;->mPrefsContainer:Landroid/view/ViewGroup;
    invoke-static/range {v23 .. v23}, Landroid/preference/PreferenceActivity;->access$900(Landroid/preference/PreferenceActivity;)Landroid/view/ViewGroup;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    check-cast v14, Landroid/widget/LinearLayout$LayoutParams;

    iget v5, v7, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    iget v13, v14, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    add-float v21, v5, v13

    int-to-float v0, v12

    move/from16 v23, v0

    div-float v6, v10, v23

    mul-float v8, v21, v6

    sub-float v9, v21, v8

    iput v8, v7, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    iput v9, v14, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    invoke-virtual {v4, v7}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/preference/PreferenceActivity$7;->this$0:Landroid/preference/PreferenceActivity;

    move-object/from16 v23, v0

    # getter for: Landroid/preference/PreferenceActivity;->mPrefsContainer:Landroid/view/ViewGroup;
    invoke-static/range {v23 .. v23}, Landroid/preference/PreferenceActivity;->access$900(Landroid/preference/PreferenceActivity;)Landroid/view/ViewGroup;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v14}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/preference/PreferenceActivity$7;->this$0:Landroid/preference/PreferenceActivity;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    # setter for: Landroid/preference/PreferenceActivity;->mUpdateLayoutBySplitChange:Z
    invoke-static/range {v23 .. v24}, Landroid/preference/PreferenceActivity;->access$1002(Landroid/preference/PreferenceActivity;Z)Z

    goto/16 :goto_1

    :cond_7
    const v23, 0x3da3d70a

    cmpg-float v23, v17, v23

    if-gez v23, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/preference/PreferenceActivity$7;->this$0:Landroid/preference/PreferenceActivity;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    const/16 v23, 0x1

    const/high16 v24, 0x41400000

    move/from16 v0, v23

    move/from16 v1, v24

    invoke-static {v0, v1, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v18

    move/from16 v10, v18

    goto/16 :goto_2

    :cond_8
    const/16 v23, 0x0

    cmpg-float v23, v19, v23

    if-gez v23, :cond_5

    const/16 v23, 0x0

    cmpl-float v23, v20, v23

    if-ltz v23, :cond_5

    add-float v10, v10, v19

    int-to-float v0, v12

    move/from16 v23, v0

    div-float v17, v10, v23

    const v23, 0x3da3d70a

    cmpg-float v23, v17, v23

    if-gez v23, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/preference/PreferenceActivity$7;->this$0:Landroid/preference/PreferenceActivity;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    const/16 v23, 0x1

    const/high16 v24, 0x41400000

    move/from16 v0, v23

    move/from16 v1, v24

    invoke-static {v0, v1, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v18

    move/from16 v10, v18

    :cond_9
    div-int/lit8 v23, v16, 0x2

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    sub-float v11, v10, v23

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/preference/PreferenceActivity$7;->this$0:Landroid/preference/PreferenceActivity;

    move-object/from16 v23, v0

    # getter for: Landroid/preference/PreferenceActivity;->mSplitBarView:Landroid/view/View;
    invoke-static/range {v23 .. v23}, Landroid/preference/PreferenceActivity;->access$800(Landroid/preference/PreferenceActivity;)Landroid/view/View;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v11}, Landroid/view/View;->setX(F)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/preference/PreferenceActivity$7;->this$0:Landroid/preference/PreferenceActivity;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    # setter for: Landroid/preference/PreferenceActivity;->mUpdateLayoutBySplitChange:Z
    invoke-static/range {v23 .. v24}, Landroid/preference/PreferenceActivity;->access$1002(Landroid/preference/PreferenceActivity;Z)Z

    goto/16 :goto_3

    :cond_a
    const/16 v23, 0x1

    move/from16 v0, v23

    if-ne v2, v0, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/preference/PreferenceActivity$7;->this$0:Landroid/preference/PreferenceActivity;

    move-object/from16 v23, v0

    const v24, 0x10203a1

    invoke-virtual/range {v23 .. v24}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout$LayoutParams;

    # getter for: Landroid/preference/PreferenceActivity;->mSplitBarMovedLeftWeight:F
    invoke-static {}, Landroid/preference/PreferenceActivity;->access$1200()F

    move-result v23

    iget v0, v7, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    move/from16 v24, v0

    cmpl-float v23, v23, v24

    if-eqz v23, :cond_b

    iget v0, v7, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    move/from16 v23, v0

    # setter for: Landroid/preference/PreferenceActivity;->mSplitBarMovedLeftWeight:F
    invoke-static/range {v23 .. v23}, Landroid/preference/PreferenceActivity;->access$1202(F)F

    :cond_b
    const/16 v23, 0x4

    move/from16 v0, v23

    invoke-virtual {v15, v0}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_1

    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/preference/PreferenceActivity$7;->this$0:Landroid/preference/PreferenceActivity;

    move-object/from16 v23, v0

    # getter for: Landroid/preference/PreferenceActivity;->mPrefsContainer:Landroid/view/ViewGroup;
    invoke-static/range {v23 .. v23}, Landroid/preference/PreferenceActivity;->access$900(Landroid/preference/PreferenceActivity;)Landroid/view/ViewGroup;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/view/View;->getX()F

    move-result v23

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/preference/PreferenceActivity$7;->this$0:Landroid/preference/PreferenceActivity;

    move-object/from16 v24, v0

    # getter for: Landroid/preference/PreferenceActivity;->mSplitBarView:Landroid/view/View;
    invoke-static/range {v24 .. v24}, Landroid/preference/PreferenceActivity;->access$800(Landroid/preference/PreferenceActivity;)Landroid/view/View;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/view/View;->getWidth()I

    move-result v24

    div-int/lit8 v24, v24, 0x2

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    sub-float v22, v23, v24

    const/16 v23, 0x0

    cmpg-float v23, v22, v23

    if-gez v23, :cond_d

    const/16 v22, 0x0

    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/preference/PreferenceActivity$7;->this$0:Landroid/preference/PreferenceActivity;

    move-object/from16 v23, v0

    # getter for: Landroid/preference/PreferenceActivity;->mSplitBarView:Landroid/view/View;
    invoke-static/range {v23 .. v23}, Landroid/preference/PreferenceActivity;->access$800(Landroid/preference/PreferenceActivity;)Landroid/view/View;

    move-result-object v23

    move-object/from16 v0, v23

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/View;->setX(F)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/preference/PreferenceActivity$7;->this$0:Landroid/preference/PreferenceActivity;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    # setter for: Landroid/preference/PreferenceActivity;->mUpdateLayoutBySplitChange:Z
    invoke-static/range {v23 .. v24}, Landroid/preference/PreferenceActivity;->access$1002(Landroid/preference/PreferenceActivity;Z)Z

    const/16 v23, 0x4

    move/from16 v0, v23

    invoke-virtual {v15, v0}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_1
.end method
