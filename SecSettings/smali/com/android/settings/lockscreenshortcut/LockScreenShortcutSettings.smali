.class public Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;
.super Landroid/app/Activity;
.source "LockScreenShortcutSettings.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# static fields
.field static DEFAULT_CURSOR_WIDTH:I

.field static ICON_5_CURSOR_WIDTH:I

.field static MAX_SHORTCUT_ICON:I


# instance fields
.field private Activityresult:Z

.field private Addition_Icon:Landroid/widget/ImageView;

.field private Addition_IconBar:Landroid/widget/ImageView;

.field private mActionBarSwitch:Landroid/widget/Switch;

.field private mAddButton:Landroid/widget/ImageView;

.field private mAddButtonPositionBar:Landroid/widget/ImageView;

.field private mAdditionImage:Z

.field mClickListener:Landroid/view/View$OnClickListener;

.field private mDeleteArea:Lcom/android/settings/lockscreenshortcut/DeleteView;

.field mDeleteAreaDragListner:Landroid/view/View$OnDragListener;

.field private mDragShadowBuilder:Lcom/android/settings/lockscreenshortcut/IconDragShadowBuilder;

.field private mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

.field private mIconCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field private mIconChangeAnimator:Landroid/animation/Animator;

.field mIconDragListner:Landroid/view/View$OnDragListener;

.field private mIconResizer:Lcom/android/settings/lockscreenshortcut/IconResizer;

.field private mIconSize:I

.field private mIsOnDragging:Z

.field private mIsOnSelecting:Z

.field private mIsTablet:Z

.field private mLeftSideView:Landroid/view/View;

.field mLongClickListener:Landroid/view/View$OnLongClickListener;

.field private mMainLayout:Landroid/widget/LinearLayout;

.field private mOnDragItem:I

.field private mPm:Landroid/content/pm/PackageManager;

.field private mPositionBar:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field mPositionBarDragListner:Landroid/view/View$OnDragListener;

.field private mRightSideView:Landroid/view/View;

.field private mShortCutButton:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field private mShortcutAddListener:Landroid/view/View$OnClickListener;

.field private mShortcutListMgr:Lcom/android/settings/lockscreenshortcut/LockScreenShortcutListManager;

.field private pcheck:I

.field private setcheck:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x3

    sput v0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->MAX_SHORTCUT_ICON:I

    sput v1, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->DEFAULT_CURSOR_WIDTH:I

    sput v1, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->ICON_5_CURSOR_WIDTH:I

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    iput-object v2, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mAddButton:Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mAddButtonPositionBar:Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->Addition_Icon:Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->Addition_IconBar:Landroid/widget/ImageView;

    const/16 v0, 0x64

    iput v0, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mOnDragItem:I

    iput-object v2, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mActionBarSwitch:Landroid/widget/Switch;

    iput-object v2, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mIconCache:Ljava/util/HashMap;

    iput v1, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mIconSize:I

    iput-boolean v1, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mIsOnDragging:Z

    iput-boolean v1, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mIsOnSelecting:Z

    iput-boolean v1, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mAdditionImage:Z

    iput-boolean v1, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->Activityresult:Z

    iput-boolean v1, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->setcheck:Z

    iput v1, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->pcheck:I

    iput-boolean v1, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mIsTablet:Z

    iput-object v2, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mLeftSideView:Landroid/view/View;

    iput-object v2, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mRightSideView:Landroid/view/View;

    new-instance v0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings$1;-><init>(Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;)V

    iput-object v0, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mShortcutAddListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings$2;

    invoke-direct {v0, p0}, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings$2;-><init>(Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;)V

    iput-object v0, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mClickListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings$3;

    invoke-direct {v0, p0}, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings$3;-><init>(Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;)V

    iput-object v0, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    new-instance v0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings$4;

    invoke-direct {v0, p0}, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings$4;-><init>(Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;)V

    iput-object v0, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mIconDragListner:Landroid/view/View$OnDragListener;

    new-instance v0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings$5;

    invoke-direct {v0, p0}, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings$5;-><init>(Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;)V

    iput-object v0, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mPositionBarDragListner:Landroid/view/View$OnDragListener;

    new-instance v0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings$6;

    invoke-direct {v0, p0}, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings$6;-><init>(Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;)V

    iput-object v0, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mDeleteAreaDragListner:Landroid/view/View$OnDragListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mIsOnSelecting:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mIsOnSelecting:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;)Lcom/android/settings/lockscreenshortcut/LockScreenShortcutListManager;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mShortcutListMgr:Lcom/android/settings/lockscreenshortcut/LockScreenShortcutListManager;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->removeShortcut(I)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->adjustCursorWidth()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mAdditionImage:Z

    return v0
.end method

.method static synthetic access$1202(Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mAdditionImage:Z

    return p1
.end method

.method static synthetic access$1300(Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->showAddButton(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mShortCutButton:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;I)I
    .locals 0

    iput p1, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->pcheck:I

    return p1
.end method

.method static synthetic access$400(Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mIsOnDragging:Z

    return v0
.end method

.method static synthetic access$402(Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mIsOnDragging:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;)Lcom/android/settings/lockscreenshortcut/DeleteView;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mDeleteArea:Lcom/android/settings/lockscreenshortcut/DeleteView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;)I
    .locals 1

    iget v0, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mOnDragItem:I

    return v0
.end method

.method static synthetic access$602(Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;I)I
    .locals 0

    iput p1, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mOnDragItem:I

    return p1
.end method

.method static synthetic access$700(Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;)Lcom/android/settings/lockscreenshortcut/IconDragShadowBuilder;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mDragShadowBuilder:Lcom/android/settings/lockscreenshortcut/IconDragShadowBuilder;

    return-object v0
.end method

.method static synthetic access$702(Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;Lcom/android/settings/lockscreenshortcut/IconDragShadowBuilder;)Lcom/android/settings/lockscreenshortcut/IconDragShadowBuilder;
    .locals 0

    iput-object p1, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mDragShadowBuilder:Lcom/android/settings/lockscreenshortcut/IconDragShadowBuilder;

    return-object p1
.end method

.method static synthetic access$800(Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;Landroid/view/View;Landroid/content/ClipData;Lcom/android/settings/lockscreenshortcut/IconDragShadowBuilder;Ljava/lang/Object;I)Z
    .locals 1

    invoke-direct/range {p0 .. p5}, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->startDrag(Landroid/view/View;Landroid/content/ClipData;Lcom/android/settings/lockscreenshortcut/IconDragShadowBuilder;Ljava/lang/Object;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;Landroid/widget/ImageView;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->changeShortCut(Landroid/widget/ImageView;)V

    return-void
.end method

.method private addShortcut(ILandroid/content/pm/ResolveInfo;)V
    .locals 9

    const/4 v8, 0x0

    const v7, 0x7f0b02fd

    iget-object v5, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mShortcutListMgr:Lcom/android/settings/lockscreenshortcut/LockScreenShortcutListManager;

    iget-object v6, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mShortcutListMgr:Lcom/android/settings/lockscreenshortcut/LockScreenShortcutListManager;

    invoke-virtual {v6}, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutListManager;->getNumOfSavedShortcut()I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v5, v6}, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutListManager;->setNumOfSavedShortcut(I)V

    iget-object v5, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mShortcutListMgr:Lcom/android/settings/lockscreenshortcut/LockScreenShortcutListManager;

    invoke-virtual {v5, p1, p2}, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutListManager;->addShortcutListItem(ILandroid/content/pm/ResolveInfo;)V

    const-string v5, "layout_inflater"

    invoke-virtual {p0, v5}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    mul-int/lit8 v0, p1, 0x2

    const v5, 0x7f04012f

    invoke-virtual {v2, v5, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    iget-object v6, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mShortCutButton:Ljava/util/ArrayList;

    const v5, 0x7f0b02fb

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    invoke-virtual {v6, p1, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    iget-object v5, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mMainLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v4, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    const v5, 0x7f040133

    invoke-virtual {v2, v5, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    iget-object v6, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mPositionBar:Ljava/util/ArrayList;

    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    invoke-virtual {v6, p1, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    sget v5, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->MAX_SHORTCUT_ICON:I

    const/4 v6, 0x4

    if-ne v5, v6, :cond_0

    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    const/16 v6, 0x1e

    invoke-virtual {v5, v6}, Landroid/view/View;->setMinimumWidth(I)V

    :cond_0
    iget-object v5, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mMainLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v3, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    iget-object v5, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mShortcutListMgr:Lcom/android/settings/lockscreenshortcut/LockScreenShortcutListManager;

    invoke-virtual {v5, p1}, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutListManager;->getShortcutListItem(I)Landroid/content/pm/ResolveInfo;

    move-result-object v5

    iget-object v5, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mShortcutListMgr:Lcom/android/settings/lockscreenshortcut/LockScreenShortcutListManager;

    invoke-virtual {v6, p1}, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutListManager;->getShortcutListItem(I)Landroid/content/pm/ResolveInfo;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/pm/ResolveInfo;->getIconResource()I

    move-result v6

    invoke-direct {p0, v5, v6}, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->loadAppIcon(Landroid/content/pm/ActivityInfo;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-nez v1, :cond_1

    iget-object v5, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mShortcutListMgr:Lcom/android/settings/lockscreenshortcut/LockScreenShortcutListManager;

    invoke-virtual {v5, p1}, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutListManager;->getShortcutListItem(I)Landroid/content/pm/ResolveInfo;

    move-result-object v5

    iget-object v5, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageItemInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    :cond_1
    iget-object v5, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mShortCutButton:Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    invoke-virtual {v5, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v5, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mShortCutButton:Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iget-object v6, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mShortcutListMgr:Lcom/android/settings/lockscreenshortcut/LockScreenShortcutListManager;

    invoke-virtual {v6, p1}, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutListManager;->getShortcutListItem(I)Landroid/content/pm/ResolveInfo;

    move-result-object v6

    iget-object v6, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v6, v7}, Landroid/content/pm/ComponentInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v5, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mPositionBar:Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iget-object v6, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mPositionBarDragListner:Landroid/view/View$OnDragListener;

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    iget-object v5, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mShortCutButton:Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iget-object v6, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v5, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mShortCutButton:Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iget-object v6, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    iget-object v5, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mShortCutButton:Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iget-object v6, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mIconDragListner:Landroid/view/View$OnDragListener;

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    return-void
.end method

.method private adjustCursorWidth()V
    .locals 4

    const/4 v3, 0x4

    sget v0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->DEFAULT_CURSOR_WIDTH:I

    sget v2, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->MAX_SHORTCUT_ICON:I

    if-le v2, v3, :cond_3

    iget-object v2, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mShortcutListMgr:Lcom/android/settings/lockscreenshortcut/LockScreenShortcutListManager;

    invoke-virtual {v2}, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutListManager;->getNumOfSavedShortcut()I

    move-result v2

    if-lt v2, v3, :cond_0

    sget v0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->ICON_5_CURSOR_WIDTH:I

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mShortcutListMgr:Lcom/android/settings/lockscreenshortcut/LockScreenShortcutListManager;

    invoke-virtual {v2}, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutListManager;->getNumOfSavedShortcut()I

    move-result v2

    if-gt v1, v2, :cond_1

    iget-object v2, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mPositionBar:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/view/View;->setMinimumWidth(I)V

    iget-object v2, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mPositionBar:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/view/View;->requestLayout()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mAddButtonPositionBar:Landroid/widget/ImageView;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mAddButtonPositionBar:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/view/View;->setMinimumWidth(I)V

    iget-object v2, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mAddButtonPositionBar:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/view/View;->requestLayout()V

    :cond_2
    iget-object v2, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mMainLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/view/View;->requestLayout()V

    :cond_3
    return-void
.end method

.method private changeShortCut(Landroid/widget/ImageView;)V
    .locals 6

    const-string v3, "LockScreenShortcutSettings"

    const-string v4, "changeShortCut"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iget-object v3, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mPositionBar:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    iget-object v3, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mPositionBar:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    if-lt v0, v1, :cond_2

    const-string v3, "LockScreenShortcutSettings"

    const-string v4, "Cannot find dropped position"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const-string v3, "LockScreenShortcutSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mOnDragItem : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mOnDragItem:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " , dropItemPosition : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v3, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mOnDragItem:I

    if-ne v0, v3, :cond_3

    const-string v3, "LockScreenShortcutSettings"

    const-string v4, "dropItemPosition == mOnDragItem / Nothing to change position because dropped position is nearby DragItem"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_3
    iget v3, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mOnDragItem:I

    if-le v0, v3, :cond_5

    iget v3, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mOnDragItem:I

    sub-int v3, v0, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    const/4 v4, 0x2

    if-ge v3, v4, :cond_4

    const-string v3, "LockScreenShortcutSettings"

    const-string v4, "dropItemPosition > mOnDragItem / Nothing to change position because dropped position is nearby DragItem"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_4
    iget-object v3, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mShortcutListMgr:Lcom/android/settings/lockscreenshortcut/LockScreenShortcutListManager;

    invoke-virtual {v3}, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutListManager;->getShortcutList()Ljava/util/ArrayList;

    move-result-object v3

    iget v4, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mOnDragItem:I

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    iget v3, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mOnDragItem:I

    invoke-direct {p0, v3}, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->removeShortcut(I)V

    add-int/lit8 v3, v0, -0x1

    invoke-direct {p0, v3, v2}, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->addShortcut(ILandroid/content/pm/ResolveInfo;)V

    :goto_2
    invoke-direct {p0}, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->adjustCursorWidth()V

    iget-object v3, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mShortcutListMgr:Lcom/android/settings/lockscreenshortcut/LockScreenShortcutListManager;

    invoke-virtual {v3}, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutListManager;->saveShortcutListtoDB()V

    goto :goto_1

    :cond_5
    iget-object v3, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mShortcutListMgr:Lcom/android/settings/lockscreenshortcut/LockScreenShortcutListManager;

    invoke-virtual {v3}, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutListManager;->getShortcutList()Ljava/util/ArrayList;

    move-result-object v3

    iget v4, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mOnDragItem:I

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    iget v3, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mOnDragItem:I

    invoke-direct {p0, v3}, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->removeShortcut(I)V

    invoke-direct {p0, v0, v2}, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->addShortcut(ILandroid/content/pm/ResolveInfo;)V

    goto :goto_2
.end method

.method private getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-nez v0, :cond_0

    const-string v0, "enterprise_policy"

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v0, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    :cond_0
    iget-object v0, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    return-object v0
.end method

.method private loadAppIcon(ILandroid/content/pm/ActivityInfo;)Landroid/graphics/drawable/Drawable;
    .locals 11

    const-string v8, "LockScreenShortcutSettings"

    const-string v9, "loadAppIcon (2)"

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x0

    iget-object v7, p2, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    iget-object v0, p2, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    :try_start_0
    iget-object v8, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mPm:Landroid/content/pm/PackageManager;

    iget v9, p2, Landroid/content/pm/PackageItemInfo;->icon:I

    if-eqz v9, :cond_1

    :goto_0
    invoke-virtual {v8, v0}, Landroid/content/pm/PackageManager;->getCSCPackageItemIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v8, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mIconResizer:Lcom/android/settings/lockscreenshortcut/IconResizer;

    invoke-virtual {v8, v2}, Lcom/android/settings/lockscreenshortcut/IconResizer;->createIconThumbnail(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    :cond_0
    :goto_1
    return-object v5

    :cond_1
    move-object v0, v7

    goto :goto_0

    :cond_2
    iget-object v8, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v8, v7}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v8

    iget v6, v8, Landroid/util/DisplayMetrics;->densityDpi:I

    iget-object v8, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mIconResizer:Lcom/android/settings/lockscreenshortcut/IconResizer;

    invoke-virtual {v8, v6}, Lcom/android/settings/lockscreenshortcut/IconResizer;->getDpi(I)I

    move-result v8

    invoke-virtual {v1, p1, v8}, Landroid/content/res/Resources;->getDrawableForDensity(II)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iget-object v8, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mIconResizer:Lcom/android/settings/lockscreenshortcut/IconResizer;

    invoke-virtual {v8, v3}, Lcom/android/settings/lockscreenshortcut/IconResizer;->createIconThumbnail(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v5

    goto :goto_1

    :catch_0
    move-exception v4

    const-string v8, "LockScreenShortcutSettings"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "loadAppIcon : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catch_1
    move-exception v4

    const-string v8, "LockScreenShortcutSettings"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "packageName : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    const-string v8, "LockScreenShortcutSettings"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "loadAppIcon : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x0

    goto :goto_1
.end method

.method private loadAppIcon(Landroid/content/pm/ActivityInfo;I)Landroid/graphics/drawable/Drawable;
    .locals 4

    const-string v1, "LockScreenShortcutSettings"

    const-string v2, "loadAppIcon (1)"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mIconCache:Ljava/util/HashMap;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p1, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    if-gtz p2, :cond_2

    iget-object v1, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {p1, v1}, Landroid/content/pm/PackageItemInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :cond_0
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iget v2, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mIconSize:I

    if-ge v1, v2, :cond_1

    if-gtz p2, :cond_3

    iget-object v1, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {p1, v1}, Landroid/content/pm/PackageItemInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :cond_1
    move-object v1, v0

    :goto_0
    return-object v1

    :cond_2
    invoke-direct {p0, p2, p1}, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->loadAppIcon(ILandroid/content/pm/ActivityInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_0

    :cond_3
    invoke-direct {p0, p2, p1}, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->loadAppIcon(ILandroid/content/pm/ActivityInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_0
.end method

.method private removeShortcut(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mShortcutListMgr:Lcom/android/settings/lockscreenshortcut/LockScreenShortcutListManager;

    iget-object v1, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mShortcutListMgr:Lcom/android/settings/lockscreenshortcut/LockScreenShortcutListManager;

    invoke-virtual {v1}, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutListManager;->getNumOfSavedShortcut()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutListManager;->setNumOfSavedShortcut(I)V

    iget-object v0, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mShortcutListMgr:Lcom/android/settings/lockscreenshortcut/LockScreenShortcutListManager;

    invoke-virtual {v0, p1}, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutListManager;->removeShortcutListItem(I)V

    iget-object v1, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mMainLayout:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mShortCutButton:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mMainLayout:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mPositionBar:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mShortCutButton:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mPositionBar:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method private setEnable(Z)V
    .locals 6

    const/4 v5, 0x0

    iget-object v3, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mShortcutListMgr:Lcom/android/settings/lockscreenshortcut/LockScreenShortcutListManager;

    invoke-virtual {v3}, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutListManager;->getNumOfSavedShortcut()I

    move-result v1

    if-eqz p1, :cond_3

    iget-object v3, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mMainLayout:Landroid/widget/LinearLayout;

    const/high16 v4, 0x3f800000

    invoke-virtual {v3, v4}, Landroid/view/View;->setAlpha(F)V

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    iget-object v3, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mShortCutButton:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    if-eqz v2, :cond_0

    iget-object v3, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v3, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mAddButton:Landroid/widget/ImageView;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mAddButton:Landroid/widget/ImageView;

    const v4, 0x7f020453

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v3, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mAddButton:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    :goto_1
    return-void

    :cond_3
    iget-object v3, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mMainLayout:Landroid/widget/LinearLayout;

    const/high16 v4, 0x3f000000

    invoke-virtual {v3, v4}, Landroid/view/View;->setAlpha(F)V

    const/4 v0, 0x0

    :goto_2
    if-ge v0, v1, :cond_5

    iget-object v3, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mShortCutButton:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    if-eqz v2, :cond_4

    invoke-virtual {v2, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v2, v5}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_5
    iget-object v3, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mAddButton:Landroid/widget/ImageView;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mAddButton:Landroid/widget/ImageView;

    const v4, 0x7f020658

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v3, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mAddButton:Landroid/widget/ImageView;

    invoke-virtual {v3, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1
.end method

.method private showAddButton(Z)V
    .locals 5

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mShortcutListMgr:Lcom/android/settings/lockscreenshortcut/LockScreenShortcutListManager;

    invoke-virtual {v0}, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutListManager;->getNumOfSavedShortcut()I

    move-result v0

    sget v1, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->MAX_SHORTCUT_ICON:I

    if-ge v0, v1, :cond_4

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "lock_screen_shortcut"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    :cond_0
    const-string v0, "layout_inflater"

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iget-object v1, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mAddButton:Landroid/widget/ImageView;

    if-nez v1, :cond_1

    const v1, 0x7f04012f

    invoke-virtual {v0, v1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    const v1, 0x7f0b02fb

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mAddButton:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mAddButton:Landroid/widget/ImageView;

    const v3, 0x7f020453

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v1, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mAddButton:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mAddButton:Landroid/widget/ImageView;

    const v3, 0x7f09169d

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mMainLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_1
    iget-object v1, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mAddButtonPositionBar:Landroid/widget/ImageView;

    if-nez v1, :cond_3

    const v1, 0x7f040133

    invoke-virtual {v0, v1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v0, 0x7f0b02fd

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mAddButtonPositionBar:Landroid/widget/ImageView;

    sget v0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->MAX_SHORTCUT_ICON:I

    const/4 v2, 0x4

    if-ne v0, v2, :cond_2

    iget-object v0, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mAddButtonPositionBar:Landroid/widget/ImageView;

    const/16 v2, 0x1e

    invoke-virtual {v0, v2}, Landroid/view/View;->setMinimumWidth(I)V

    :cond_2
    iget-object v0, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mMainLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_3
    :goto_0
    return-void

    :cond_4
    iget-object v0, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mAddButton:Landroid/widget/ImageView;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mMainLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mAddButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iput-object v4, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mAddButton:Landroid/widget/ImageView;

    :cond_5
    iget-object v0, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mAddButtonPositionBar:Landroid/widget/ImageView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mMainLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mAddButtonPositionBar:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iput-object v4, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mAddButtonPositionBar:Landroid/widget/ImageView;

    goto :goto_0
.end method

.method private startDrag(Landroid/view/View;Landroid/content/ClipData;Lcom/android/settings/lockscreenshortcut/IconDragShadowBuilder;Ljava/lang/Object;I)Z
    .locals 16

    const-string v1, "LockScreenShortcutSettings"

    const-string v2, "Drag started"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v15, 0x0

    new-instance v7, Landroid/graphics/Point;

    invoke-direct {v7}, Landroid/graphics/Point;-><init>()V

    new-instance v8, Landroid/graphics/Point;

    invoke-direct {v8}, Landroid/graphics/Point;-><init>()V

    move-object/from16 v0, p3

    invoke-virtual {v0, v7, v8}, Landroid/view/View$DragShadowBuilder;->onProvideShadowMetrics(Landroid/graphics/Point;Landroid/graphics/Point;)V

    iget v1, v8, Landroid/graphics/Point;->x:I

    iget v2, v7, Landroid/graphics/Point;->y:I

    div-int/lit8 v2, v2, 0x2

    invoke-virtual/range {p0 .. p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0f007b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {v8, v1, v2}, Landroid/graphics/Point;->set(II)V

    iget v1, v7, Landroid/graphics/Point;->x:I

    if-ltz v1, :cond_0

    iget v1, v7, Landroid/graphics/Point;->y:I

    if-ltz v1, :cond_0

    iget v1, v8, Landroid/graphics/Point;->x:I

    if-ltz v1, :cond_0

    iget v1, v8, Landroid/graphics/Point;->y:I

    if-gez v1, :cond_1

    :cond_0
    const-string v1, "LockScreenShortcutSettings"

    const-string v2, "Drag shadow dimensions must not be negative"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_1
    new-instance v6, Landroid/view/Surface;

    invoke-direct {v6}, Landroid/view/Surface;-><init>()V

    :try_start_0
    const-class v1, Landroid/view/View;

    const-string v2, "mAttachInfo"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "mWindow"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    invoke-virtual {v2, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/IWindow;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v4, "mSession"

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    invoke-virtual {v3, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/IWindowSession;

    iget v4, v7, Landroid/graphics/Point;->x:I

    iget v5, v7, Landroid/graphics/Point;->y:I

    move/from16 v3, p5

    invoke-interface/range {v1 .. v6}, Landroid/view/IWindowSession;->prepareDrag(Landroid/view/IWindow;IIILandroid/view/Surface;)Landroid/os/IBinder;

    move-result-object v9

    if-eqz v9, :cond_2

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Lcom/android/settings/lockscreenshortcut/IconDragShadowBuilder;->setSurface(Landroid/view/Surface;)V

    invoke-virtual/range {p3 .. p3}, Lcom/android/settings/lockscreenshortcut/IconDragShadowBuilder;->draw()V

    const-class v3, Landroid/view/View;

    const-string v4, "getViewRootImpl"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Class;

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/ViewRootImpl;

    const-class v4, Landroid/view/ViewRootImpl;

    const-string v5, "setLocalDragState"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Class;

    const/4 v11, 0x0

    const-class v12, Ljava/lang/Object;

    aput-object v12, v10, v11

    invoke-virtual {v4, v5, v10}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object p4, v5, v10

    invoke-virtual {v4, v3, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v3, v7}, Landroid/view/ViewRootImpl;->getLastTouchPoint(Landroid/graphics/Point;)V

    iget v3, v7, Landroid/graphics/Point;->x:I

    int-to-float v10, v3

    iget v3, v7, Landroid/graphics/Point;->y:I

    int-to-float v11, v3

    iget v3, v8, Landroid/graphics/Point;->x:I

    int-to-float v12, v3

    iget v3, v8, Landroid/graphics/Point;->y:I

    int-to-float v13, v3

    move-object v7, v1

    move-object v8, v2

    move-object/from16 v14, p2

    invoke-interface/range {v7 .. v14}, Landroid/view/IWindowSession;->performDrag(Landroid/view/IWindow;Landroid/os/IBinder;FFFFLandroid/content/ClipData;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto/16 :goto_0

    :catch_0
    move-exception v1

    const-string v2, "LockScreenShortcutSettings"

    const-string v3, "Unable to initiate drag"

    invoke-static {v2, v3, v1}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {v6}, Landroid/view/Surface;->destroy()V

    :cond_2
    move v1, v15

    goto/16 :goto_0
.end method


# virtual methods
.method public MakeShortcutList(Ljava/lang/String;)V
    .locals 19

    const-string v15, "layout_inflater"

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/LayoutInflater;

    invoke-virtual/range {p0 .. p0}, Landroid/content/ContextWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mPm:Landroid/content/pm/PackageManager;

    new-instance v15, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutListManager;

    invoke-virtual/range {p0 .. p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mPm:Landroid/content/pm/PackageManager;

    move-object/from16 v17, v0

    invoke-direct/range {v15 .. v17}, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutListManager;-><init>(Landroid/content/ContentResolver;Landroid/content/pm/PackageManager;)V

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mShortcutListMgr:Lcom/android/settings/lockscreenshortcut/LockScreenShortcutListManager;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mShortcutListMgr:Lcom/android/settings/lockscreenshortcut/LockScreenShortcutListManager;

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutListManager;->InitShortcutList(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_0

    const-string v15, "LockScreenShortcutSettings"

    const-string v16, "MakeShortcutList fail"

    invoke-static/range {v15 .. v16}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    const/16 v9, 0x1e

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mShortcutListMgr:Lcom/android/settings/lockscreenshortcut/LockScreenShortcutListManager;

    invoke-virtual {v15}, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutListManager;->getAppList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v15

    if-ge v15, v9, :cond_1

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v9

    :cond_1
    const/4 v5, 0x0

    :goto_1
    if-ge v5, v9, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mIconCache:Ljava/util/HashMap;

    move-object/from16 v16, v0

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/pm/ResolveInfo;

    iget-object v15, v15, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v15, v15, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/pm/ResolveInfo;

    iget-object v15, v15, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v15, v15, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/pm/ResolveInfo;

    invoke-virtual {v15}, Landroid/content/pm/ResolveInfo;->getIconResource()I

    move-result v18

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/pm/ResolveInfo;

    iget-object v15, v15, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1, v15}, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->loadAppIcon(ILandroid/content/pm/ActivityInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v15

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_2
    const v15, 0x7f0b0301

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const-string v8, "\n"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const v16, 0x7f0913bd

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const v16, 0x7f0913be

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v15, 0x7f0b0302

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mMainLayout:Landroid/widget/LinearLayout;

    const v15, 0x7f0b0303

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Lcom/android/settings/lockscreenshortcut/DeleteView;

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mDeleteArea:Lcom/android/settings/lockscreenshortcut/DeleteView;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mDeleteArea:Lcom/android/settings/lockscreenshortcut/DeleteView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mDeleteAreaDragListner:Landroid/view/View$OnDragListener;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Landroid/view/View;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mDeleteArea:Lcom/android/settings/lockscreenshortcut/DeleteView;

    const/16 v16, 0x8

    invoke-virtual/range {v15 .. v16}, Lcom/android/settings/lockscreenshortcut/DeleteView;->setVisibility(I)V

    const/4 v5, 0x0

    const/4 v5, 0x0

    :goto_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mShortcutListMgr:Lcom/android/settings/lockscreenshortcut/LockScreenShortcutListManager;

    invoke-virtual {v15}, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutListManager;->getNumOfSavedShortcut()I

    move-result v15

    if-ge v5, v15, :cond_5

    const v15, 0x7f040133

    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v7, v15, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v11

    const v15, 0x7f0b02fd

    invoke-virtual {v11, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mPositionBarDragListner:Landroid/view/View$OnDragListener;

    invoke-virtual {v10, v15}, Landroid/view/View;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    sget v15, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->MAX_SHORTCUT_ICON:I

    const/16 v16, 0x4

    move/from16 v0, v16

    if-ne v15, v0, :cond_3

    const/16 v15, 0x1e

    invoke-virtual {v10, v15}, Landroid/view/View;->setMinimumWidth(I)V

    :cond_3
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mPositionBar:Ljava/util/ArrayList;

    invoke-virtual {v15, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mMainLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v15, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    const v15, 0x7f04012f

    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v7, v15, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v12

    const v15, 0x7f0b02fb

    invoke-virtual {v12, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mShortcutListMgr:Lcom/android/settings/lockscreenshortcut/LockScreenShortcutListManager;

    invoke-virtual {v15, v5}, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutListManager;->getShortcutListItem(I)Landroid/content/pm/ResolveInfo;

    move-result-object v15

    iget-object v15, v15, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mShortcutListMgr:Lcom/android/settings/lockscreenshortcut/LockScreenShortcutListManager;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutListManager;->getShortcutListItem(I)Landroid/content/pm/ResolveInfo;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/content/pm/ResolveInfo;->getIconResource()I

    move-result v16

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v15, v1}, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->loadAppIcon(Landroid/content/pm/ActivityInfo;I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    if-nez v6, :cond_4

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mShortcutListMgr:Lcom/android/settings/lockscreenshortcut/LockScreenShortcutListManager;

    invoke-virtual {v15, v5}, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutListManager;->getShortcutListItem(I)Landroid/content/pm/ResolveInfo;

    move-result-object v15

    iget-object v15, v15, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mPm:Landroid/content/pm/PackageManager;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Landroid/content/pm/PackageItemInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    :cond_4
    invoke-virtual {v13, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v13, v15}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v13, v15}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mIconDragListner:Landroid/view/View$OnDragListener;

    invoke-virtual {v13, v15}, Landroid/view/View;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mShortcutListMgr:Lcom/android/settings/lockscreenshortcut/LockScreenShortcutListManager;

    invoke-virtual {v15, v5}, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutListManager;->getShortcutListItem(I)Landroid/content/pm/ResolveInfo;

    move-result-object v15

    iget-object v15, v15, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mPm:Landroid/content/pm/PackageManager;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Landroid/content/pm/ComponentInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v15

    invoke-virtual {v13, v15}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mShortCutButton:Ljava/util/ArrayList;

    invoke-virtual {v15, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mMainLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v15, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_2

    :cond_5
    const v15, 0x7f040133

    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v7, v15, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v11

    const v15, 0x7f0b02fd

    invoke-virtual {v11, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/ImageView;

    sget v15, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->MAX_SHORTCUT_ICON:I

    const/16 v16, 0x4

    move/from16 v0, v16

    if-ne v15, v0, :cond_6

    const/16 v15, 0x1e

    invoke-virtual {v10, v15}, Landroid/view/View;->setMinimumWidth(I)V

    :cond_6
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mPositionBarDragListner:Landroid/view/View$OnDragListener;

    invoke-virtual {v10, v15}, Landroid/view/View;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mPositionBar:Ljava/util/ArrayList;

    invoke-virtual {v15, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mMainLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v15, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mAdditionImage:Z

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->showAddButton(Z)V

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->adjustCursorWidth()V

    new-instance v14, Landroid/animation/LayoutTransition;

    invoke-direct {v14}, Landroid/animation/LayoutTransition;-><init>()V

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/animation/LayoutTransition;->getAnimator(I)Landroid/animation/Animator;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mIconChangeAnimator:Landroid/animation/Animator;

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mIconChangeAnimator:Landroid/animation/Animator;

    move-object/from16 v16, v0

    invoke-virtual/range {v14 .. v16}, Landroid/animation/LayoutTransition;->setAnimator(ILandroid/animation/Animator;)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mMainLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v15, v14}, Landroid/view/ViewGroup;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    goto/16 :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 11

    const/4 v10, 0x1

    const/4 v9, 0x0

    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    iput-boolean v9, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mIsOnSelecting:Z

    const/16 v6, 0x65

    if-ne p1, v6, :cond_3

    const/4 v6, -0x1

    if-ne p2, v6, :cond_3

    const-string v6, "selected_package"

    invoke-virtual {p3, v6}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string v6, "selected_activity"

    invoke-virtual {p3, v6}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v6, "clicked_view_index"

    invoke-virtual {p3, v6}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const-string v6, "LockScreenShortcutSettings"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "selected_package : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v6, "LockScreenShortcutSettings"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "selected_activity : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v6, "LockScreenShortcutSettings"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "clicked_view_index : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    iget-object v6, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mShortcutListMgr:Lcom/android/settings/lockscreenshortcut/LockScreenShortcutListManager;

    invoke-virtual {v6}, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutListManager;->updateAppList()V

    iget-object v6, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mShortcutListMgr:Lcom/android/settings/lockscreenshortcut/LockScreenShortcutListManager;

    invoke-virtual {v6}, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutListManager;->getAppList()Ljava/util/List;

    move-result-object v0

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    if-ge v2, v6, :cond_0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ResolveInfo;

    iget-object v6, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ResolveInfo;

    iget-object v6, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    :cond_0
    iget-object v6, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mShortcutListMgr:Lcom/android/settings/lockscreenshortcut/LockScreenShortcutListManager;

    invoke-virtual {v6}, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutListManager;->getNumOfSavedShortcut()I

    move-result v6

    if-ge v1, v6, :cond_2

    invoke-direct {p0, v1}, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->removeShortcut(I)V

    invoke-direct {p0, v1, v3}, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->addShortcut(ILandroid/content/pm/ResolveInfo;)V

    :goto_1
    invoke-direct {p0}, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->adjustCursorWidth()V

    iget-object v6, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mShortcutListMgr:Lcom/android/settings/lockscreenshortcut/LockScreenShortcutListManager;

    invoke-virtual {v6}, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutListManager;->saveShortcutListtoDB()V

    iput-boolean v10, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->Activityresult:Z

    :goto_2
    return-void

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    invoke-direct {p0, v1, v3}, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->addShortcut(ILandroid/content/pm/ResolveInfo;)V

    iget-boolean v6, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mAdditionImage:Z

    invoke-direct {p0, v6}, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->showAddButton(Z)V

    goto :goto_1

    :cond_3
    iget v6, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->pcheck:I

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "personal_mode_enabled"

    invoke-static {v7, v8, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-eq v6, v7, :cond_4

    iput-boolean v9, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->Activityresult:Z

    goto :goto_2

    :cond_4
    iput-boolean v10, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->Activityresult:Z

    goto :goto_2
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 5

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-static {v1}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "set_shortcuts_mode"

    if-eqz p2, :cond_2

    const/4 v1, 0x2

    :goto_0
    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_0
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "lock_screen_shortcut"

    if-eqz p2, :cond_1

    const/4 v2, 0x1

    :cond_1
    invoke-static {v1, v3, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-direct {p0, p2}, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->setEnable(Z)V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.settings.LOCK_SCREEN_SHORTCUT_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "isEnable"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    return-void

    :cond_2
    move v1, v2

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 12

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-static {}, Lcom/android/settings/Utils;->isFullScreenSupported()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-virtual {v6}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    iget v7, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v7, v7, 0x400

    iput v7, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget v7, v3, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit16 v7, v7, 0x2000

    iput v7, v3, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    invoke-virtual {v6, v3}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    :cond_0
    const-string v7, "window"

    invoke-virtual {p0, v7}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/WindowManager;

    invoke-interface {v7}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    const-string v7, "LockScreenShortcutSettings"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "LCD getWidth : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v7, "LockScreenShortcutSettings"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "LCD getHeight : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Landroid/view/Display;->getHeight()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v7, "LockScreenShortcutSettings"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "LCD orientation : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Landroid/view/Display;->getOrientation()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v7, "SEC_FLOATING_FEATURE_SETTINGS_CAMERA_ONLY_MODEL"

    invoke-static {v7}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_6

    invoke-virtual {v1}, Landroid/view/Display;->getOrientation()I

    move-result v7

    rem-int/lit8 v7, v7, 0x2

    if-nez v7, :cond_1

    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    move-result v7

    const/16 v8, 0x1e0

    if-gt v7, v8, :cond_2

    :cond_1
    invoke-virtual {v1}, Landroid/view/Display;->getOrientation()I

    move-result v7

    rem-int/lit8 v7, v7, 0x2

    const/4 v8, 0x1

    if-ne v7, v8, :cond_6

    invoke-virtual {v1}, Landroid/view/Display;->getHeight()I

    move-result v7

    const/16 v8, 0x1e0

    if-le v7, v8, :cond_6

    :cond_2
    const/4 v7, 0x5

    sput v7, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->MAX_SHORTCUT_ICON:I

    :cond_3
    :goto_0
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0f0079

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    sput v7, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->DEFAULT_CURSOR_WIDTH:I

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0f007a

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    sput v7, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->ICON_5_CURSOR_WIDTH:I

    const v7, 0x7f040136

    invoke-virtual {p0, v7}, Landroid/app/Activity;->setContentView(I)V

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v7

    iput-boolean v7, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mIsTablet:Z

    iget-boolean v7, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mIsTablet:Z

    if-eqz v7, :cond_4

    const v7, 0x7f0b0224

    invoke-virtual {p0, v7}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    iput-object v7, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mLeftSideView:Landroid/view/View;

    const v7, 0x7f0b0228

    invoke-virtual {p0, v7}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    iput-object v7, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mRightSideView:Landroid/view/View;

    iget-object v7, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mLeftSideView:Landroid/view/View;

    iget-object v8, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mRightSideView:Landroid/view/View;

    invoke-static {v7, v8}, Lcom/android/settings/Utils;->updateSideViewVisibility(Landroid/view/View;Landroid/view/View;)V

    :cond_4
    new-instance v7, Landroid/widget/Switch;

    invoke-direct {v7, p0}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0f004c

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iget-object v7, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mActionBarSwitch:Landroid/widget/Switch;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v7, v8, v9, v4, v10}, Landroid/widget/TextView;->setPadding(IIII)V

    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v7

    const/16 v8, 0x10

    const/16 v9, 0x10

    invoke-virtual {v7, v8, v9}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    iget-boolean v7, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mIsTablet:Z

    if-eqz v7, :cond_5

    const-string v7, "layout_inflater"

    invoke-virtual {p0, v7}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    const v7, 0x7f040065

    const/4 v8, 0x0

    invoke-virtual {v2, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v7

    new-instance v8, Landroid/app/ActionBar$LayoutParams;

    const/4 v9, -0x2

    const/4 v10, -0x2

    const/16 v11, 0x15

    invoke-direct {v8, v9, v10, v11}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v7, v0, v8}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    const v7, 0x7f0b013e

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Switch;

    iput-object v7, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mActionBarSwitch:Landroid/widget/Switch;

    :cond_5
    iget-object v7, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v7, p0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    new-instance v7, Lcom/android/settings/lockscreenshortcut/IconResizer;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/android/settings/lockscreenshortcut/IconResizer;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mIconResizer:Lcom/android/settings/lockscreenshortcut/IconResizer;

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mShortCutButton:Ljava/util/ArrayList;

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mPositionBar:Ljava/util/ArrayList;

    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    iput-object v7, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mIconCache:Ljava/util/HashMap;

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v7, 0x7f0f0077

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    float-to-int v7, v7

    iput v7, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mIconSize:I

    const/4 v7, 0x0

    invoke-virtual {p0, v7}, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->MakeShortcutList(Ljava/lang/String;)V

    return-void

    :cond_6
    const-string v7, "ATT"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_7

    const-string v7, "TMB"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_7

    const-string v7, "VZW"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_7

    const-string v7, "SPR"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    :cond_7
    const/4 v7, 0x4

    sput v7, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->MAX_SHORTCUT_ICON:I

    goto/16 :goto_0
.end method

.method public onResume()V
    .locals 7

    const/4 v5, 0x0

    const/4 v4, 0x1

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    invoke-direct {p0}, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v3}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v3

    const/4 v6, 0x2

    invoke-virtual {v3, v6}, Landroid/app/enterprise/RestrictionPolicy;->isLockScreenViewAllowed(I)Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v3, v5}, Landroid/widget/Switch;->setChecked(Z)V

    iget-object v3, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setEnabled(Z)V

    :goto_0
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mDeleteArea:Lcom/android/settings/lockscreenshortcut/DeleteView;

    if-eqz v3, :cond_2

    const-string v3, "window"

    invoke-virtual {p0, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager;

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v1

    iget-object v3, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mDeleteArea:Lcom/android/settings/lockscreenshortcut/DeleteView;

    if-eq v1, v4, :cond_0

    const/4 v6, 0x3

    if-ne v1, v6, :cond_1

    :cond_0
    move v5, v4

    :cond_1
    invoke-virtual {v3, v5}, Lcom/android/settings/lockscreenshortcut/DeleteView;->setOrienationMode(Z)V

    :cond_2
    return-void

    :cond_3
    iget-boolean v3, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mIsTablet:Z

    if-eqz v3, :cond_5

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v6, "lock_screen_shortcut"

    invoke-static {v3, v6, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v4, :cond_4

    move v2, v4

    :goto_1
    iget-object v3, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v3, v2}, Landroid/widget/Switch;->setChecked(Z)V

    invoke-direct {p0, v2}, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->setEnable(Z)V

    :goto_2
    iget-object v3, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_0

    :cond_4
    move v2, v5

    goto :goto_1

    :cond_5
    invoke-direct {p0, v4}, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->setEnable(Z)V

    goto :goto_2
.end method
