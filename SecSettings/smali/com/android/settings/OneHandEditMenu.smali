.class public Lcom/android/settings/OneHandEditMenu;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "OneHandEditMenu.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/OneHandEditMenu$PanelDragShadowBuilder;
    }
.end annotation


# instance fields
.field private idxGap:I

.field private mActiveEditMenuNum:I

.field private mActiveNotificationList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mActiveNotificationPanelList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mAlertDialog:Landroid/app/AlertDialog;

.field private mAvailBtnLayoutList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/FrameLayout;",
            ">;"
        }
    .end annotation
.end field

.field private mAvailableBtnArea:Landroid/widget/LinearLayout;

.field private mBarLayoutParam:Landroid/widget/FrameLayout$LayoutParams;

.field private mCandidateNotificationList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mCandidateNotificationPanelList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mConvertPanelItemstring:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentFooterView:Landroid/view/View;

.field private mCurrentOrientation:I

.field private mDividerLayoutParam:Landroid/widget/FrameLayout$LayoutParams;

.field public mDragStart:Z

.field private final mEditMenuMaxNum:I

.field private final mEditMenuMinNum:I

.field private mLineLayoutParam:Landroid/widget/FrameLayout$LayoutParams;

.field mLongClickListener:Landroid/view/View$OnLongClickListener;

.field private mLongClickedView:Landroid/view/View;

.field private mNotificationPanelArea:Landroid/widget/LinearLayout;

.field private mNotificationPanelLayoutList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/FrameLayout;",
            ">;"
        }
    .end annotation
.end field

.field private mOnNumOfAvailableButtonsChangeListener:Lcom/android/settings/OneHandEditMenuLayout$OnNumOfAvailableButtonsChangeListener;

.field private mOnehandDummry:Landroid/preference/PreferenceScreen;

.field private mOverlayedLayoutParam:Landroid/widget/LinearLayout$LayoutParams;

.field mPanelBarDragListener:Landroid/view/View$OnDragListener;

.field private mPanelLayoutParam:Landroid/widget/FrameLayout$LayoutParams;

.field private mShadowBuilder:Lcom/android/settings/OneHandEditMenu$PanelDragShadowBuilder;

.field private mStartFromSearch:Z

.field mfakePanelDragListener:Landroid/view/View$OnDragListener;


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/OneHandEditMenu;->mNotificationPanelLayoutList:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/OneHandEditMenu;->mAvailBtnLayoutList:Ljava/util/ArrayList;

    iput-object v1, p0, Lcom/android/settings/OneHandEditMenu;->mCurrentFooterView:Landroid/view/View;

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/OneHandEditMenu;->mCurrentOrientation:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/settings/OneHandEditMenu;->mEditMenuMinNum:I

    const/4 v0, 0x4

    iput v0, p0, Lcom/android/settings/OneHandEditMenu;->mEditMenuMaxNum:I

    iput v2, p0, Lcom/android/settings/OneHandEditMenu;->mActiveEditMenuNum:I

    iput v2, p0, Lcom/android/settings/OneHandEditMenu;->idxGap:I

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/OneHandEditMenu;->mConvertPanelItemstring:Ljava/util/HashMap;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/OneHandEditMenu;->mActiveNotificationList:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/OneHandEditMenu;->mCandidateNotificationList:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/OneHandEditMenu;->mActiveNotificationPanelList:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/OneHandEditMenu;->mCandidateNotificationPanelList:Ljava/util/ArrayList;

    iput-object v1, p0, Lcom/android/settings/OneHandEditMenu;->mAlertDialog:Landroid/app/AlertDialog;

    iput-object v1, p0, Lcom/android/settings/OneHandEditMenu;->mLineLayoutParam:Landroid/widget/FrameLayout$LayoutParams;

    iput-object v1, p0, Lcom/android/settings/OneHandEditMenu;->mPanelLayoutParam:Landroid/widget/FrameLayout$LayoutParams;

    iput-object v1, p0, Lcom/android/settings/OneHandEditMenu;->mDividerLayoutParam:Landroid/widget/FrameLayout$LayoutParams;

    iput-object v1, p0, Lcom/android/settings/OneHandEditMenu;->mOverlayedLayoutParam:Landroid/widget/LinearLayout$LayoutParams;

    iput-object v1, p0, Lcom/android/settings/OneHandEditMenu;->mBarLayoutParam:Landroid/widget/FrameLayout$LayoutParams;

    iput-boolean v2, p0, Lcom/android/settings/OneHandEditMenu;->mStartFromSearch:Z

    iput-boolean v2, p0, Lcom/android/settings/OneHandEditMenu;->mDragStart:Z

    new-instance v0, Lcom/android/settings/OneHandEditMenu$1;

    invoke-direct {v0, p0}, Lcom/android/settings/OneHandEditMenu$1;-><init>(Lcom/android/settings/OneHandEditMenu;)V

    iput-object v0, p0, Lcom/android/settings/OneHandEditMenu;->mOnNumOfAvailableButtonsChangeListener:Lcom/android/settings/OneHandEditMenuLayout$OnNumOfAvailableButtonsChangeListener;

    new-instance v0, Lcom/android/settings/OneHandEditMenu$2;

    invoke-direct {v0, p0}, Lcom/android/settings/OneHandEditMenu$2;-><init>(Lcom/android/settings/OneHandEditMenu;)V

    iput-object v0, p0, Lcom/android/settings/OneHandEditMenu;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    new-instance v0, Lcom/android/settings/OneHandEditMenu$3;

    invoke-direct {v0, p0}, Lcom/android/settings/OneHandEditMenu$3;-><init>(Lcom/android/settings/OneHandEditMenu;)V

    iput-object v0, p0, Lcom/android/settings/OneHandEditMenu;->mfakePanelDragListener:Landroid/view/View$OnDragListener;

    new-instance v0, Lcom/android/settings/OneHandEditMenu$4;

    invoke-direct {v0, p0}, Lcom/android/settings/OneHandEditMenu$4;-><init>(Lcom/android/settings/OneHandEditMenu;)V

    iput-object v0, p0, Lcom/android/settings/OneHandEditMenu;->mPanelBarDragListener:Landroid/view/View$OnDragListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/OneHandEditMenu;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/OneHandEditMenu;->updateQuickSettingsList()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/OneHandEditMenu;)Lcom/android/settings/OneHandEditMenu$PanelDragShadowBuilder;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/OneHandEditMenu;->mShadowBuilder:Lcom/android/settings/OneHandEditMenu$PanelDragShadowBuilder;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/settings/OneHandEditMenu;Lcom/android/settings/OneHandEditMenu$PanelDragShadowBuilder;)Lcom/android/settings/OneHandEditMenu$PanelDragShadowBuilder;
    .locals 0

    iput-object p1, p0, Lcom/android/settings/OneHandEditMenu;->mShadowBuilder:Lcom/android/settings/OneHandEditMenu$PanelDragShadowBuilder;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/settings/OneHandEditMenu;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/OneHandEditMenu;->mLongClickedView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/settings/OneHandEditMenu;Landroid/view/View;)Landroid/view/View;
    .locals 0

    iput-object p1, p0, Lcom/android/settings/OneHandEditMenu;->mLongClickedView:Landroid/view/View;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/settings/OneHandEditMenu;)I
    .locals 1

    iget v0, p0, Lcom/android/settings/OneHandEditMenu;->idxGap:I

    return v0
.end method

.method static synthetic access$400(Lcom/android/settings/OneHandEditMenu;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/OneHandEditMenu;->mActiveNotificationPanelList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings/OneHandEditMenu;)I
    .locals 1

    iget v0, p0, Lcom/android/settings/OneHandEditMenu;->mActiveEditMenuNum:I

    return v0
.end method

.method static synthetic access$600(Lcom/android/settings/OneHandEditMenu;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/OneHandEditMenu;->mCandidateNotificationPanelList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/settings/OneHandEditMenu;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/OneHandEditMenu;->changeQuickSettingsByPanel(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/settings/OneHandEditMenu;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/OneHandEditMenu;->changeQuickSettingsByBar(Landroid/view/View;)V

    return-void
.end method

.method private changeQuickSettingsByBar(Landroid/view/View;)V
    .locals 14

    const/4 v13, 0x4

    const/4 v12, 0x0

    const/4 v11, 0x1

    iget-object v8, p0, Lcom/android/settings/OneHandEditMenu;->mLongClickedView:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget v8, p0, Lcom/android/settings/OneHandEditMenu;->idxGap:I

    if-ge v3, v8, :cond_0

    iget-object v2, p0, Lcom/android/settings/OneHandEditMenu;->mActiveNotificationList:Ljava/util/ArrayList;

    :goto_0
    iget v8, p0, Lcom/android/settings/OneHandEditMenu;->idxGap:I

    if-lt v3, v8, :cond_1

    iget v8, p0, Lcom/android/settings/OneHandEditMenu;->idxGap:I

    sub-int/2addr v3, v8

    const/4 v1, 0x1

    :goto_1
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget v8, p0, Lcom/android/settings/OneHandEditMenu;->idxGap:I

    if-ge v0, v8, :cond_2

    iget-object v7, p0, Lcom/android/settings/OneHandEditMenu;->mActiveNotificationList:Ljava/util/ArrayList;

    :goto_2
    iget v8, p0, Lcom/android/settings/OneHandEditMenu;->idxGap:I

    if-lt v0, v8, :cond_3

    iget v8, p0, Lcom/android/settings/OneHandEditMenu;->idxGap:I

    sub-int/2addr v0, v8

    const/4 v6, 0x1

    :goto_3
    const-string v8, "OneHandEditMenu"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "changeQuickSettingsByBar() - longClickedIdx: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " / dropIdx : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v1, :cond_4

    if-ne v6, v11, :cond_4

    iget v8, p0, Lcom/android/settings/OneHandEditMenu;->mActiveEditMenuNum:I

    if-lt v11, v8, :cond_4

    const v8, 0x7f091635

    new-array v9, v11, [Ljava/lang/Object;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v12

    invoke-virtual {p0, v8, v9}, Landroid/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-static {v8, v4, v12}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/Toast;->show()V

    :goto_4
    return-void

    :cond_0
    iget-object v2, p0, Lcom/android/settings/OneHandEditMenu;->mCandidateNotificationList:Ljava/util/ArrayList;

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    iget-object v7, p0, Lcom/android/settings/OneHandEditMenu;->mCandidateNotificationList:Ljava/util/ArrayList;

    goto :goto_2

    :cond_3
    const/4 v6, 0x0

    goto :goto_3

    :cond_4
    if-nez v6, :cond_5

    if-ne v1, v11, :cond_5

    iget v8, p0, Lcom/android/settings/OneHandEditMenu;->mActiveEditMenuNum:I

    if-gt v13, v8, :cond_5

    const v8, 0x7f091636

    new-array v9, v11, [Ljava/lang/Object;

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v12

    invoke-virtual {p0, v8, v9}, Landroid/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-static {v8, v4, v12}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/Toast;->show()V

    goto :goto_4

    :cond_5
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    if-ge v3, v0, :cond_6

    if-ne v2, v7, :cond_6

    add-int/lit8 v8, v0, -0x1

    invoke-virtual {v7, v8, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    :goto_5
    invoke-direct {p0}, Lcom/android/settings/OneHandEditMenu;->saveAppslist()V

    goto :goto_4

    :cond_6
    invoke-virtual {v7, v0, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_5
.end method

.method private changeQuickSettingsByPanel(Landroid/view/View;)V
    .locals 14

    const/4 v13, 0x4

    const/4 v12, 0x0

    const/4 v11, 0x1

    iget-object v8, p0, Lcom/android/settings/OneHandEditMenu;->mLongClickedView:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget v8, p0, Lcom/android/settings/OneHandEditMenu;->idxGap:I

    if-ge v3, v8, :cond_0

    iget-object v2, p0, Lcom/android/settings/OneHandEditMenu;->mActiveNotificationList:Ljava/util/ArrayList;

    :goto_0
    iget v8, p0, Lcom/android/settings/OneHandEditMenu;->idxGap:I

    if-lt v3, v8, :cond_1

    iget v8, p0, Lcom/android/settings/OneHandEditMenu;->idxGap:I

    sub-int/2addr v3, v8

    const/4 v1, 0x1

    :goto_1
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget v8, p0, Lcom/android/settings/OneHandEditMenu;->idxGap:I

    if-ge v0, v8, :cond_2

    iget-object v7, p0, Lcom/android/settings/OneHandEditMenu;->mActiveNotificationList:Ljava/util/ArrayList;

    :goto_2
    iget v8, p0, Lcom/android/settings/OneHandEditMenu;->idxGap:I

    if-lt v0, v8, :cond_3

    iget v8, p0, Lcom/android/settings/OneHandEditMenu;->idxGap:I

    sub-int/2addr v0, v8

    const/4 v6, 0x1

    :goto_3
    const-string v8, "OneHandEditMenu"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "changeQuickSettingsByPanel() - longClickedIdx: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " / dropIdx : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v7, v0}, Lcom/android/settings/OneHandEditMenu;->isEmptyPanel(Ljava/util/ArrayList;I)Z

    move-result v8

    if-eqz v8, :cond_6

    if-nez v1, :cond_4

    if-ne v6, v11, :cond_4

    iget v8, p0, Lcom/android/settings/OneHandEditMenu;->mActiveEditMenuNum:I

    if-lt v11, v8, :cond_4

    const v8, 0x7f091635

    new-array v9, v11, [Ljava/lang/Object;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v12

    invoke-virtual {p0, v8, v9}, Landroid/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-static {v8, v4, v12}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/Toast;->show()V

    :goto_4
    return-void

    :cond_0
    iget-object v2, p0, Lcom/android/settings/OneHandEditMenu;->mCandidateNotificationList:Ljava/util/ArrayList;

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    iget-object v7, p0, Lcom/android/settings/OneHandEditMenu;->mCandidateNotificationList:Ljava/util/ArrayList;

    goto :goto_2

    :cond_3
    const/4 v6, 0x0

    goto :goto_3

    :cond_4
    if-nez v6, :cond_5

    if-ne v1, v11, :cond_5

    iget v8, p0, Lcom/android/settings/OneHandEditMenu;->mActiveEditMenuNum:I

    if-gt v13, v8, :cond_5

    const v8, 0x7f091636

    new-array v9, v11, [Ljava/lang/Object;

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v12

    invoke-virtual {p0, v8, v9}, Landroid/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-static {v8, v4, v12}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/Toast;->show()V

    goto :goto_4

    :cond_5
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_5
    invoke-direct {p0}, Lcom/android/settings/OneHandEditMenu;->saveAppslist()V

    goto :goto_4

    :cond_6
    invoke-direct {p0, v2, v3, v7, v0}, Lcom/android/settings/OneHandEditMenu;->swapPanels(Ljava/util/ArrayList;ILjava/util/ArrayList;I)V

    goto :goto_5
.end method

.method private displayQuickSettings(IIILjava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 26
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/FrameLayout;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v23, "layout_inflater"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/settings/SettingsPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/LayoutInflater;

    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/content/ContextWrapper;->getPackageName()Ljava/lang/String;

    move-result-object v13

    mul-int v22, p2, p3

    if-nez p1, :cond_0

    const/4 v6, 0x0

    :goto_0
    const/4 v7, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Lcom/android/settings/Utils;->hasCocktailbar(Landroid/content/Context;)Z

    move-result v23

    if-eqz v23, :cond_1

    const v20, 0x7f040175

    const v21, 0x7f040174

    :goto_1
    const/4 v7, 0x0

    :goto_2
    move/from16 v0, v22

    if-ge v7, v0, :cond_4

    const/16 v23, 0x0

    move/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v9, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v19

    const v23, 0x7f0b0320

    move-object/from16 v0, v19

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/LinearLayout;

    const v23, 0x7f0b0373

    move-object/from16 v0, v19

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/ImageView;

    const v23, 0x7f0b0375

    move-object/from16 v0, v19

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/TextView;

    const/16 v23, 0x0

    move/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v9, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v12

    const v23, 0x7f0b0388

    move/from16 v0, v23

    invoke-virtual {v12, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/ImageView;

    const v23, 0x7f0b0389

    move/from16 v0, v23

    invoke-virtual {v12, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    add-int v23, v7, v6

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    add-int v23, v7, v6

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v15, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    add-int v23, v7, v6

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v5, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    const-string v23, "OneHandEditMenu"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "idx: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    const-string v23, "OneHandEditMenu"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "gap: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    const-string v23, "OneHandEditMenu"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "tag: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    add-int v25, v7, v6

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    move-object/from16 v1, p6

    invoke-direct {v0, v1, v7}, Lcom/android/settings/OneHandEditMenu;->isEmptyPanel(Ljava/util/ArrayList;I)Z

    move-result v23

    if-eqz v23, :cond_2

    const v23, 0x7f02066b

    move/from16 v0, v23

    invoke-virtual {v14, v0}, Landroid/view/View;->setBackgroundResource(I)V

    const v23, 0x7f0b0385

    move-object/from16 v0, v19

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v23

    const/16 v24, 0x8

    invoke-virtual/range {v23 .. v24}, Landroid/view/View;->setVisibility(I)V

    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/OneHandEditMenu;->mfakePanelDragListener:Landroid/view/View$OnDragListener;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v5, v0}, Landroid/view/View;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    div-int v4, v7, p2

    move-object/from16 v0, p4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    const v23, 0x7f0b038b

    move/from16 v0, v23

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/LinearLayout;

    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    const v23, 0x7f0b038c

    move/from16 v0, v23

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/LinearLayout;

    invoke-virtual {v10, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    move-object/from16 v0, p5

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_2

    :cond_0
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/settings/OneHandEditMenu;->idxGap:I

    goto/16 :goto_0

    :cond_1
    const v20, 0x7f040172

    const v21, 0x7f040173

    goto/16 :goto_1

    :cond_2
    move-object/from16 v0, p6

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    move-object/from16 v8, v17

    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    const-string v24, "drawable"

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v0, v8, v1, v13}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v23

    move-object/from16 v0, v16

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-static {}, Lcom/android/settings/Utils;->isVisibility_panel_bg()Z

    move-result v23

    if-nez v23, :cond_3

    const v23, 0x7f0b0385

    move-object/from16 v0, v19

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v23

    const/16 v24, 0x8

    invoke-virtual/range {v23 .. v24}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    const-string v24, "string"

    move-object/from16 v0, v23

    move-object/from16 v1, v17

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2, v13}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v23

    move-object/from16 v0, v18

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/OneHandEditMenu;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    move-object/from16 v23, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/OneHandEditMenu;->mPanelBarDragListener:Landroid/view/View$OnDragListener;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v15, v0}, Landroid/view/View;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    goto/16 :goto_3

    :cond_4
    return-void
.end method

.method private isEmptyPanel(Ljava/util/ArrayList;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;I)Z"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-gt v1, p2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private loadAppslist()V
    .locals 7

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "onehand_edit_active_app_list"

    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "onehand_edit_active_number_of_apps"

    const/4 v6, 0x3

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/android/settings/OneHandEditMenu;->mActiveEditMenuNum:I

    const-string v4, "OneHandEditMenu"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "loadAppslist() - active_app_list : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "OneHandEditMenu"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "loadAppslist() - mActiveEditMenuNum : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/settings/OneHandEditMenu;->mActiveEditMenuNum:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v4, p0, Lcom/android/settings/OneHandEditMenu;->mActiveNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    iget-object v4, p0, Lcom/android/settings/OneHandEditMenu;->mCandidateNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    const-string v4, ";"

    invoke-virtual {v1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v4, v0

    iget v5, p0, Lcom/android/settings/OneHandEditMenu;->mActiveEditMenuNum:I

    if-ge v4, v5, :cond_1

    const-string v4, "OneHandEditMenu"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "loadAppslist() - activeApps.length : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    array-length v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    array-length v4, v0

    iput v4, p0, Lcom/android/settings/OneHandEditMenu;->mActiveEditMenuNum:I

    :cond_1
    const/4 v3, 0x0

    :goto_1
    iget v4, p0, Lcom/android/settings/OneHandEditMenu;->mActiveEditMenuNum:I

    if-ge v3, v4, :cond_3

    iget-object v4, p0, Lcom/android/settings/OneHandEditMenu;->mConvertPanelItemstring:Ljava/util/HashMap;

    aget-object v5, v0, v3

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v4, p0, Lcom/android/settings/OneHandEditMenu;->mActiveNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    const-string v4, "OneHandEditMenu"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "loadAppslist() - mActiveNotificationList.size():  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/OneHandEditMenu;->mActiveNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget v3, p0, Lcom/android/settings/OneHandEditMenu;->mActiveEditMenuNum:I

    :goto_2
    array-length v4, v0

    if-ge v3, v4, :cond_5

    iget-object v4, p0, Lcom/android/settings/OneHandEditMenu;->mConvertPanelItemstring:Ljava/util/HashMap;

    aget-object v5, v0, v3

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v4, "OneHandEditMenu"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "convertPanelString:  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v2, :cond_4

    iget-object v4, p0, Lcom/android/settings/OneHandEditMenu;->mCandidateNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_5
    const-string v4, "OneHandEditMenu"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "loadAppslist() - mCandidateNotificationList.size():  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/OneHandEditMenu;->mCandidateNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private makeConvertPanelName()V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/OneHandEditMenu;->mConvertPanelItemstring:Ljava/util/HashMap;

    const-string v1, "Recent"

    const-string v2, "onehand_edit_recent"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/settings/OneHandEditMenu;->mConvertPanelItemstring:Ljava/util/HashMap;

    const-string v1, "Home"

    const-string v2, "onehand_edit_home"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/settings/OneHandEditMenu;->mConvertPanelItemstring:Ljava/util/HashMap;

    const-string v1, "Back"

    const-string v2, "onehand_edit_back"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/settings/OneHandEditMenu;->mConvertPanelItemstring:Ljava/util/HashMap;

    const-string v1, "Reduce"

    const-string v2, "onehand_edit_reduce"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/settings/OneHandEditMenu;->mConvertPanelItemstring:Ljava/util/HashMap;

    const-string v1, "Apps"

    const-string v2, "onehand_edit_apps"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/settings/OneHandEditMenu;->mConvertPanelItemstring:Ljava/util/HashMap;

    const-string v1, "Options"

    const-string v2, "onehand_edit_options"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/settings/OneHandEditMenu;->mConvertPanelItemstring:Ljava/util/HashMap;

    const-string v1, "onehand_edit_recent"

    const-string v2, "Recent"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/settings/OneHandEditMenu;->mConvertPanelItemstring:Ljava/util/HashMap;

    const-string v1, "onehand_edit_home"

    const-string v2, "Home"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/settings/OneHandEditMenu;->mConvertPanelItemstring:Ljava/util/HashMap;

    const-string v1, "onehand_edit_back"

    const-string v2, "Back"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/settings/OneHandEditMenu;->mConvertPanelItemstring:Ljava/util/HashMap;

    const-string v1, "onehand_edit_reduce"

    const-string v2, "Reduce"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/settings/OneHandEditMenu;->mConvertPanelItemstring:Ljava/util/HashMap;

    const-string v1, "onehand_edit_apps"

    const-string v2, "Apps"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/settings/OneHandEditMenu;->mConvertPanelItemstring:Ljava/util/HashMap;

    const-string v1, "onehand_edit_options"

    const-string v2, "Options"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private refreshUI()V
    .locals 12

    const/4 v11, 0x0

    const/16 v10, 0x8

    iget-object v7, p0, Lcom/android/settings/OneHandEditMenu;->mCurrentFooterView:Landroid/view/View;

    if-eqz v7, :cond_0

    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getListView()Landroid/widget/ListView;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings/OneHandEditMenu;->mCurrentFooterView:Landroid/view/View;

    invoke-virtual {v7, v8}, Landroid/widget/ListView;->removeFooterView(Landroid/view/View;)Z

    move-result v2

    const-string v7, "OneHandEditMenu"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "refreshUI() - isRemoved: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v0, Lcom/android/settings/OneHandEditMenuLayout;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-direct {v0, v7}, Lcom/android/settings/OneHandEditMenuLayout;-><init>(Landroid/content/Context;)V

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v7, -0x1

    const/4 v8, -0x2

    invoke-direct {v3, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const-string v7, "layout_inflater"

    invoke-virtual {p0, v7}, Lcom/android/settings/SettingsPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    const v7, 0x7f040170

    invoke-virtual {v1, v7, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    const v7, 0x7f0b0380

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout;

    iput-object v7, p0, Lcom/android/settings/OneHandEditMenu;->mNotificationPanelArea:Landroid/widget/LinearLayout;

    const v7, 0x7f0b0382

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout;

    iput-object v7, p0, Lcom/android/settings/OneHandEditMenu;->mAvailableBtnArea:Landroid/widget/LinearLayout;

    invoke-direct {p0}, Lcom/android/settings/OneHandEditMenu;->updateQuickSettingsList()V

    iget-object v7, p0, Lcom/android/settings/OneHandEditMenu;->mActiveNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    iget-object v8, p0, Lcom/android/settings/OneHandEditMenu;->mCandidateNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int v5, v7, v8

    const/4 v7, 0x1

    if-lt v7, v5, :cond_1

    const v7, 0x7f0b0381

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/android/settings/PanelTextView;

    invoke-virtual {v6, v10}, Landroid/view/View;->setVisibility(I)V

    iget-object v7, p0, Lcom/android/settings/OneHandEditMenu;->mAvailableBtnArea:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v10}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getListView()Landroid/widget/ListView;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v0, v11, v8}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V

    iput-object v0, p0, Lcom/android/settings/OneHandEditMenu;->mCurrentFooterView:Landroid/view/View;

    return-void
.end method

.method private saveAppslist()V
    .locals 7

    const-string v0, ""

    const/4 v3, 0x0

    :goto_0
    iget-object v4, p0, Lcom/android/settings/OneHandEditMenu;->mActiveNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_0

    iget-object v4, p0, Lcom/android/settings/OneHandEditMenu;->mActiveNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/settings/OneHandEditMenu;->mConvertPanelItemstring:Ljava/util/HashMap;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ";"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    const-string v4, "OneHandEditMenu"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "saveAppslist() -  activeApps: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    :goto_1
    iget-object v4, p0, Lcom/android/settings/OneHandEditMenu;->mCandidateNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    iget-object v4, p0, Lcom/android/settings/OneHandEditMenu;->mCandidateNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/settings/OneHandEditMenu;->mConvertPanelItemstring:Ljava/util/HashMap;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ";"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    const-string v4, "OneHandEditMenu"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "saveAppslist() -  activeApps: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "onehand_edit_active_number_of_apps"

    iget-object v6, p0, Lcom/android/settings/OneHandEditMenu;->mActiveNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "onehand_edit_active_app_list"

    invoke-static {v4, v5, v0}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "onehand_edit_active_number_of_apps"

    const/4 v6, 0x3

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/android/settings/OneHandEditMenu;->mActiveEditMenuNum:I

    return-void
.end method

.method private swapPanels(Ljava/util/ArrayList;ILjava/util/ArrayList;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;I",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p3, p4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, p2, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p3, p4, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private updateQuickSettingsList()V
    .locals 15

    iget-object v0, p0, Lcom/android/settings/OneHandEditMenu;->mNotificationPanelArea:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object v0, p0, Lcom/android/settings/OneHandEditMenu;->mNotificationPanelLayoutList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/android/settings/OneHandEditMenu;->mActiveNotificationPanelList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/android/settings/OneHandEditMenu;->mAvailableBtnArea:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object v0, p0, Lcom/android/settings/OneHandEditMenu;->mAvailBtnLayoutList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/android/settings/OneHandEditMenu;->mCandidateNotificationPanelList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget v0, p0, Lcom/android/settings/OneHandEditMenu;->mCurrentOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e000a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    :goto_0
    const-string v0, "OneHandEditMenu"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateQuickSettingsList() - oneLinePanelNum: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/OneHandEditMenu;->mActiveNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    rem-int/2addr v0, v2

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/OneHandEditMenu;->mActiveNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    div-int v3, v0, v2

    :goto_1
    const-string v0, "OneHandEditMenu"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateQuickSettingsList() - notiPanelLines: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    mul-int v0, v2, v3

    iput v0, p0, Lcom/android/settings/OneHandEditMenu;->idxGap:I

    const-string v0, "layout_inflater"

    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/view/LayoutInflater;

    const/4 v12, 0x0

    :goto_2
    if-ge v12, v3, :cond_4

    const v0, 0x7f040176

    const/4 v1, 0x0

    invoke-virtual {v13, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/FrameLayout;

    const v0, 0x7f0b038a

    invoke-virtual {v11, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v0, 0x1

    if-ne v3, v0, :cond_2

    const/16 v0, 0x8

    :goto_3
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/settings/OneHandEditMenu;->mNotificationPanelLayoutList:Ljava/util/ArrayList;

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/settings/OneHandEditMenu;->mNotificationPanelArea:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    :cond_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e0009

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    goto/16 :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/settings/OneHandEditMenu;->mActiveNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    div-int/2addr v0, v2

    add-int/lit8 v3, v0, 0x1

    goto :goto_1

    :cond_2
    if-nez v12, :cond_3

    const/16 v0, 0x8

    goto :goto_3

    :cond_3
    const/4 v0, 0x0

    goto :goto_3

    :cond_4
    const/4 v1, 0x0

    iget-object v4, p0, Lcom/android/settings/OneHandEditMenu;->mNotificationPanelLayoutList:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/android/settings/OneHandEditMenu;->mActiveNotificationPanelList:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/android/settings/OneHandEditMenu;->mActiveNotificationList:Ljava/util/ArrayList;

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/settings/OneHandEditMenu;->displayQuickSettings(IIILjava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    iget-object v0, p0, Lcom/android/settings/OneHandEditMenu;->mCandidateNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    rem-int/2addr v0, v2

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/android/settings/OneHandEditMenu;->mCandidateNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    div-int v7, v0, v2

    :goto_4
    const-string v0, "OneHandEditMenu"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateQuickSettingsList() - availBtnlLines: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v7, :cond_5

    const/4 v7, 0x1

    :cond_5
    const/4 v14, 0x0

    :goto_5
    if-ge v14, v7, :cond_7

    const v0, 0x7f040176

    const/4 v1, 0x0

    invoke-virtual {v13, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/android/settings/OneHandEditMenu;->mAvailBtnLayoutList:Ljava/util/ArrayList;

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/settings/OneHandEditMenu;->mAvailableBtnArea:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    add-int/lit8 v14, v14, 0x1

    goto :goto_5

    :cond_6
    iget-object v0, p0, Lcom/android/settings/OneHandEditMenu;->mCandidateNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    div-int/2addr v0, v2

    add-int/lit8 v7, v0, 0x1

    goto :goto_4

    :cond_7
    const/4 v5, 0x1

    iget-object v8, p0, Lcom/android/settings/OneHandEditMenu;->mAvailBtnLayoutList:Ljava/util/ArrayList;

    iget-object v9, p0, Lcom/android/settings/OneHandEditMenu;->mCandidateNotificationPanelList:Ljava/util/ArrayList;

    iget-object v10, p0, Lcom/android/settings/OneHandEditMenu;->mCandidateNotificationList:Ljava/util/ArrayList;

    move-object v4, p0

    move v6, v2

    invoke-direct/range {v4 .. v10}, Lcom/android/settings/OneHandEditMenu;->displayQuickSettings(IIILjava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/android/settings/OneHandEditMenu;->mCurrentOrientation:I

    const-string v0, "OneHandEditMenu"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onActivityCreated() - mCurrentOrientation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/settings/OneHandEditMenu;->mCurrentOrientation:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/settings/OneHandEditMenu;->refreshUI()V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    const-string v0, "OneHandEditMenu"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onConfigurationChanged() - newConfig.orientation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " / mCurrentOrientation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/settings/OneHandEditMenu;->mCurrentOrientation:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/android/settings/OneHandEditMenu;->mCurrentOrientation:I

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    if-eq v0, v1, :cond_0

    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/android/settings/OneHandEditMenu;->mCurrentOrientation:I

    invoke-direct {p0}, Lcom/android/settings/OneHandEditMenu;->refreshUI()V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f070097

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceFragment;->addPreferencesFromResource(I)V

    const-string v0, "onehand_edit_dummy"

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/android/settings/OneHandEditMenu;->mOnehandDummry:Landroid/preference/PreferenceScreen;

    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/OneHandEditMenu;->mOnehandDummry:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "onehand_edit_active_number_of_apps"

    const/4 v2, 0x3

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/OneHandEditMenu;->mActiveEditMenuNum:I

    invoke-direct {p0}, Lcom/android/settings/OneHandEditMenu;->makeConvertPanelName()V

    invoke-direct {p0}, Lcom/android/settings/OneHandEditMenu;->loadAppslist()V

    return-void
.end method

.method public onDestroy()V
    .locals 3

    const/4 v2, 0x0

    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onDestroy()V

    const-string v0, "OneHandEditMenu"

    const-string v1, "onDestroy()"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v2, p0, Lcom/android/settings/OneHandEditMenu;->mPanelLayoutParam:Landroid/widget/FrameLayout$LayoutParams;

    iput-object v2, p0, Lcom/android/settings/OneHandEditMenu;->mLineLayoutParam:Landroid/widget/FrameLayout$LayoutParams;

    iput-object v2, p0, Lcom/android/settings/OneHandEditMenu;->mPanelLayoutParam:Landroid/widget/FrameLayout$LayoutParams;

    iput-object v2, p0, Lcom/android/settings/OneHandEditMenu;->mOverlayedLayoutParam:Landroid/widget/LinearLayout$LayoutParams;

    iput-object v2, p0, Lcom/android/settings/OneHandEditMenu;->mBarLayoutParam:Landroid/widget/FrameLayout$LayoutParams;

    return-void
.end method

.method public onPause()V
    .locals 2

    const/4 v1, 0x0

    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    iget-object v0, p0, Lcom/android/settings/OneHandEditMenu;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    invoke-static {v1}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/OneHandEditMenu;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    iput-object v1, p0, Lcom/android/settings/OneHandEditMenu;->mAlertDialog:Landroid/app/AlertDialog;

    :cond_0
    return-void
.end method
