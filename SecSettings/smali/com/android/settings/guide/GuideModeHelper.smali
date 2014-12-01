.class public final Lcom/android/settings/guide/GuideModeHelper;
.super Ljava/lang/Object;
.source "GuideModeHelper.java"


# static fields
.field private static mIsTablet:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/settings/guide/GuideModeHelper;->mIsTablet:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Landroid/view/View;Lcom/android/settings/helpdialog/TwHelpDialog;Landroid/app/Activity;)Z
    .locals 1

    invoke-static {p0, p1, p2}, Lcom/android/settings/guide/GuideModeHelper;->placeHandPointer(Landroid/view/View;Lcom/android/settings/helpdialog/TwHelpDialog;Landroid/app/Activity;)Z

    move-result v0

    return v0
.end method

.method static drawActionPointerForSwitcher(Lcom/android/settings/helpdialog/TwHelpDialog;Landroid/app/Activity;)V
    .locals 5

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    :goto_1
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-static {v2, p0, p1}, Lcom/android/settings/guide/GuideModeHelper;->placeHandPointer(Landroid/view/View;Lcom/android/settings/helpdialog/TwHelpDialog;Landroid/app/Activity;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v2}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v3

    new-instance v1, Lcom/android/settings/guide/GuideModeHelper$1;

    invoke-direct {v1, v2, p0, p1, v3}, Lcom/android/settings/guide/GuideModeHelper$1;-><init>(Landroid/view/View;Lcom/android/settings/helpdialog/TwHelpDialog;Landroid/app/Activity;Landroid/view/ViewTreeObserver;)V

    invoke-virtual {v3, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method protected static emulateTouchOnFocusedView(Landroid/app/Activity;Lcom/android/settings/helpdialog/TwHelpDialog;)V
    .locals 17

    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v9

    instance-of v1, v9, Landroid/widget/ListView;

    if-eqz v1, :cond_2

    check-cast v9, Landroid/widget/ListView;

    invoke-virtual {v9}, Landroid/widget/AbsListView;->getSelectedView()Landroid/view/View;

    move-result-object v9

    :cond_2
    if-eqz v9, :cond_0

    new-instance v14, Landroid/graphics/Rect;

    invoke-direct {v14}, Landroid/graphics/Rect;-><init>()V

    const/4 v1, 0x2

    new-array v10, v1, [I

    invoke-virtual {v9, v10}, Landroid/view/View;->getLocationOnScreen([I)V

    const/4 v1, 0x0

    aget v1, v10, v1

    const/4 v2, 0x1

    aget v2, v10, v2

    const/4 v3, 0x0

    aget v3, v10, v3

    invoke-virtual {v9}, Landroid/view/View;->getWidth()I

    move-result v4

    add-int/2addr v3, v4

    const/4 v4, 0x1

    aget v4, v10, v4

    invoke-virtual {v9}, Landroid/view/View;->getHeight()I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {v14, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    invoke-virtual {v14}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget v1, v14, Landroid/graphics/Rect;->left:I

    iget v2, v14, Landroid/graphics/Rect;->right:I

    add-int/2addr v1, v2

    div-int/lit8 v15, v1, 0x2

    iget v1, v14, Landroid/graphics/Rect;->bottom:I

    iget v2, v14, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, v2

    div-int/lit8 v16, v1, 0x2

    const v1, 0x7f0b000c

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Lcom/android/settings/helpdialog/TwTouchPunchView;

    const v1, 0x7f0b000d

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Lcom/android/settings/helpdialog/TwTouchPunchView;

    const-wide/16 v1, 0x64

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const/4 v5, 0x0

    int-to-float v6, v15

    move/from16 v0, v16

    int-to-float v7, v0

    const/4 v8, 0x0

    invoke-static/range {v1 .. v8}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v11

    if-eqz v12, :cond_3

    invoke-virtual {v12, v11}, Lcom/android/settings/helpdialog/TwTouchPunchView;->processGlobalCoordinatesTouch(Landroid/view/MotionEvent;)V

    :cond_3
    if-eqz v13, :cond_4

    invoke-virtual {v13, v11}, Lcom/android/settings/helpdialog/TwTouchPunchView;->processGlobalCoordinatesTouch(Landroid/view/MotionEvent;)V

    :cond_4
    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Lcom/android/settings/helpdialog/TwHelpDialog;->onTouchEvent(Landroid/view/MotionEvent;)Z

    invoke-virtual {v11}, Landroid/view/MotionEvent;->recycle()V

    const-wide/16 v1, 0x64

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-wide/16 v5, 0x64

    add-long/2addr v3, v5

    const/4 v5, 0x1

    int-to-float v6, v15

    move/from16 v0, v16

    int-to-float v7, v0

    const/4 v8, 0x0

    invoke-static/range {v1 .. v8}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v11

    if-eqz v12, :cond_5

    invoke-virtual {v12, v11}, Lcom/android/settings/helpdialog/TwTouchPunchView;->processGlobalCoordinatesTouch(Landroid/view/MotionEvent;)V

    :cond_5
    if-eqz v13, :cond_6

    invoke-virtual {v13, v11}, Lcom/android/settings/helpdialog/TwTouchPunchView;->processGlobalCoordinatesTouch(Landroid/view/MotionEvent;)V

    :cond_6
    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Lcom/android/settings/helpdialog/TwHelpDialog;->onTouchEvent(Landroid/view/MotionEvent;)Z

    invoke-virtual {v11}, Landroid/view/MotionEvent;->recycle()V

    goto/16 :goto_0
.end method

.method static getGuideModeFromBundle(Landroid/os/Bundle;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    const-string v1, "settings:guide_mode"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "settings:guide_mode"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "settings:guide_is_on"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "settings:guide_mode"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method static getGuideModeFromIntent(Landroid/os/Bundle;Landroid/os/Bundle;)Ljava/lang/String;
    .locals 2

    if-eqz p0, :cond_1

    const-string v1, "settings:guide_mode"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_0

    invoke-static {p1}, Lcom/android/settings/guide/GuideModeHelper;->getGuideModeFromBundle(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static init(Landroid/content/Context;)V
    .locals 1

    invoke-static {p0}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v0

    sput-boolean v0, Lcom/android/settings/guide/GuideModeHelper;->mIsTablet:Z

    return-void
.end method

.method static isGuideCompleted(Landroid/os/Bundle;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    const-string v1, "settings:guide_completed"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "settings:guide_completed"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "settings:guide_completed"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    :cond_0
    return v0
.end method

.method static isGuideModeBluetooth(Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "bt"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    :cond_0
    return v0
.end method

.method static isGuideModeWiFi(Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "wifi"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    :cond_0
    return v0
.end method

.method static isInGuideMode(Landroid/os/Bundle;Landroid/os/Bundle;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    const-string v1, "settings:guide_is_on"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "settings:guide_is_on"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-eqz p1, :cond_0

    const-string v1, "settings:guide_is_on"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "settings:guide_is_on"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "settings:guide_is_on"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    goto :goto_0
.end method

.method static isTablet()Z
    .locals 1

    sget-boolean v0, Lcom/android/settings/guide/GuideModeHelper;->mIsTablet:Z

    return v0
.end method

.method private static placeHandPointer(Landroid/view/View;Lcom/android/settings/helpdialog/TwHelpDialog;Landroid/app/Activity;)Z
    .locals 13

    const v12, 0x7f0b000b

    const/4 v11, -0x2

    const/4 v9, 0x1

    const/4 v8, -0x1

    invoke-virtual {p1, v12}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    const v10, 0x7f0b000c

    invoke-virtual {p1, v10}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/android/settings/helpdialog/TwTouchPunchView;

    const v10, 0x7f0b000f

    invoke-virtual {p1, v10}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getX()F

    move-result v10

    float-to-int v8, v10

    :cond_0
    if-lez v8, :cond_3

    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v11, v11}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v10, 0x9

    invoke-virtual {v3, v10, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/16 v10, 0xa

    invoke-virtual {v3, v10, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const v10, 0x7f0f0094

    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v10

    add-int/2addr v10, v8

    iput v10, v3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    const v10, 0x7f0f0093

    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v10

    iput v10, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    if-nez v2, :cond_4

    new-instance v2, Landroid/widget/ImageView;

    invoke-direct {v2, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    const v10, 0x7f020693

    invoke-virtual {v2, v10}, Landroid/widget/ImageView;->setImageResource(I)V

    const v10, 0x7f091554

    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    const v10, 0x7f0b000e

    invoke-virtual {p1, v10}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout;

    if-eqz v4, :cond_1

    invoke-virtual {v4, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v2, v12}, Landroid/view/View;->setId(I)V

    :cond_1
    :goto_0
    if-eqz v6, :cond_2

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/RelativeLayout$LayoutParams;

    iput v8, v5, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    invoke-virtual {v6, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v6}, Landroid/view/View;->invalidate()V

    :cond_2
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    const v10, 0x7f0f0095

    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v10

    sub-int v10, v8, v10

    iput v10, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    :cond_3
    if-lez v8, :cond_5

    :goto_1
    return v9

    :cond_4
    invoke-virtual {v2, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v2}, Landroid/view/View;->invalidate()V

    goto :goto_0

    :cond_5
    const/4 v9, 0x0

    goto :goto_1
.end method

.method static setSettingsListEnabled(ZLandroid/app/Activity;)V
    .locals 2

    instance-of v1, p1, Landroid/app/ListActivity;

    if-eqz v1, :cond_0

    check-cast p1, Landroid/app/ListActivity;

    invoke-virtual {p1}, Landroid/app/ListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    move-result v1

    if-eq v1, p0, :cond_0

    invoke-virtual {v0, p0}, Landroid/view/View;->setEnabled(Z)V

    invoke-static {}, Lcom/android/settings/guide/GuideFragment;->isTablet()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, p0}, Landroid/widget/AdapterView;->setFocusable(Z)V

    :cond_0
    return-void
.end method

.method static setSettingsListFocusEnabled(ZLandroid/app/Activity;)V
    .locals 2

    instance-of v1, p1, Landroid/app/ListActivity;

    if-eqz v1, :cond_1

    check-cast p1, Landroid/app/ListActivity;

    invoke-virtual {p1}, Landroid/app/ListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    move-result v1

    if-eq v1, p0, :cond_0

    invoke-virtual {v0, p0}, Landroid/view/View;->setEnabled(Z)V

    :cond_0
    invoke-static {}, Lcom/android/settings/guide/GuideFragment;->isTablet()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/AdapterView;->setFocusable(Z)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    :cond_1
    return-void
.end method
