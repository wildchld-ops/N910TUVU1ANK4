.class Lcom/android/internal/policy/impl/MultiPhoneWindow$TabContainer;
.super Ljava/lang/Object;
.source "MultiPhoneWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/MultiPhoneWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TabContainer"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/MultiPhoneWindow$TabContainer$TabGestureListener;
    }
.end annotation


# instance fields
.field private mTabChangeListener:Landroid/widget/TabHost$OnTabChangeListener;

.field private mTabFocusedView:Landroid/view/View;

.field private mTabGestureDetector:Landroid/view/GestureDetector;

.field private mTabHost:Landroid/widget/TabHost;

.field private mTabRoot:Lcom/android/internal/policy/impl/MultiPhoneWindow$CustomTabLayout;

.field final synthetic this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;


# direct methods
.method private constructor <init>(Lcom/android/internal/policy/impl/MultiPhoneWindow;Lcom/android/internal/policy/impl/MultiPhoneWindow$CustomTabLayout;)V
    .locals 4
    .param p2    # Lcom/android/internal/policy/impl/MultiPhoneWindow$CustomTabLayout;

    iput-object p1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$TabContainer;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p2, :cond_0

    iput-object p2, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$TabContainer;->mTabRoot:Lcom/android/internal/policy/impl/MultiPhoneWindow$CustomTabLayout;

    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$TabContainer;->mTabRoot:Lcom/android/internal/policy/impl/MultiPhoneWindow$CustomTabLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x1020012

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TabHost;

    iput-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$TabContainer;->mTabHost:Landroid/widget/TabHost;

    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$TabContainer;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v0}, Landroid/widget/TabHost;->setup()V

    new-instance v0, Lcom/android/internal/policy/impl/MultiPhoneWindow$TabContainer$1;

    invoke-direct {v0, p0, p1}, Lcom/android/internal/policy/impl/MultiPhoneWindow$TabContainer$1;-><init>(Lcom/android/internal/policy/impl/MultiPhoneWindow$TabContainer;Lcom/android/internal/policy/impl/MultiPhoneWindow;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$TabContainer;->mTabChangeListener:Landroid/widget/TabHost$OnTabChangeListener;

    new-instance v0, Landroid/view/GestureDetector;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$000(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/android/internal/policy/impl/MultiPhoneWindow$TabContainer$TabGestureListener;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/internal/policy/impl/MultiPhoneWindow$TabContainer$TabGestureListener;-><init>(Lcom/android/internal/policy/impl/MultiPhoneWindow$TabContainer;Lcom/android/internal/policy/impl/MultiPhoneWindow$1;)V

    invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$TabContainer;->mTabGestureDetector:Landroid/view/GestureDetector;

    :cond_0
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/policy/impl/MultiPhoneWindow;Lcom/android/internal/policy/impl/MultiPhoneWindow$CustomTabLayout;Lcom/android/internal/policy/impl/MultiPhoneWindow$1;)V
    .locals 0
    .param p1    # Lcom/android/internal/policy/impl/MultiPhoneWindow;
    .param p2    # Lcom/android/internal/policy/impl/MultiPhoneWindow$CustomTabLayout;
    .param p3    # Lcom/android/internal/policy/impl/MultiPhoneWindow$1;

    invoke-direct {p0, p1, p2}, Lcom/android/internal/policy/impl/MultiPhoneWindow$TabContainer;-><init>(Lcom/android/internal/policy/impl/MultiPhoneWindow;Lcom/android/internal/policy/impl/MultiPhoneWindow$CustomTabLayout;)V

    return-void
.end method

.method static synthetic access$6300(Lcom/android/internal/policy/impl/MultiPhoneWindow$TabContainer;)Landroid/view/View;
    .locals 1
    .param p0    # Lcom/android/internal/policy/impl/MultiPhoneWindow$TabContainer;

    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$TabContainer;->mTabFocusedView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$6302(Lcom/android/internal/policy/impl/MultiPhoneWindow$TabContainer;Landroid/view/View;)Landroid/view/View;
    .locals 0
    .param p0    # Lcom/android/internal/policy/impl/MultiPhoneWindow$TabContainer;
    .param p1    # Landroid/view/View;

    iput-object p1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$TabContainer;->mTabFocusedView:Landroid/view/View;

    return-object p1
.end method

.method static synthetic access$6400(Lcom/android/internal/policy/impl/MultiPhoneWindow$TabContainer;)Landroid/view/GestureDetector;
    .locals 1
    .param p0    # Lcom/android/internal/policy/impl/MultiPhoneWindow$TabContainer;

    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$TabContainer;->mTabGestureDetector:Landroid/view/GestureDetector;

    return-object v0
.end method

.method private getMinimizedDrawable(Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p1    # Landroid/content/ComponentName;

    iget-object v1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$TabContainer;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mActivity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$100(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/android/internal/policy/impl/multiwindow/ApplicationSquareThumbnail;->create(Landroid/app/Activity;Landroid/content/ComponentName;)Lcom/android/internal/policy/impl/multiwindow/ApplicationThumbnail;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/multiwindow/ApplicationThumbnail;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public getTabFocusedView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$TabContainer;->mTabFocusedView:Landroid/view/View;

    return-object v0
.end method

.method public refresh()V
    .locals 14

    const/4 v12, 0x0

    iget-object v10, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$TabContainer;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;
    invoke-static {v10}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$3600(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Lcom/samsung/android/multiwindow/MultiWindowFacade;

    move-result-object v10

    if-eqz v10, :cond_0

    iget-object v10, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$TabContainer;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # invokes: Lcom/android/internal/policy/impl/MultiPhoneWindow;->getState()I
    invoke-static {v10}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$4400(Lcom/android/internal/policy/impl/MultiPhoneWindow;)I

    move-result v10

    const/4 v11, 0x3

    if-eq v10, v11, :cond_1

    const-string v10, "TAG"

    const-string v11, "TabContainer::refresh state is not STATE_SCALED_FLOATING"

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v10, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$TabContainer;->mTabRoot:Lcom/android/internal/policy/impl/MultiPhoneWindow$CustomTabLayout;

    if-nez v10, :cond_2

    const-string v10, "TAG"

    const-string v11, "TabContainer::refresh mTabRoot == null"

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    iget-object v10, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$TabContainer;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;
    invoke-static {v10}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$3600(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Lcom/samsung/android/multiwindow/MultiWindowFacade;

    move-result-object v10

    invoke-virtual {v10}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->getTabs()Ljava/util/List;

    move-result-object v8

    check-cast v8, Ljava/util/ArrayList;

    if-eqz v8, :cond_3

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v10

    const/4 v11, 0x1

    if-le v10, v11, :cond_3

    iget-object v10, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$TabContainer;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # invokes: Lcom/android/internal/policy/impl/MultiPhoneWindow;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;
    invoke-static {v10}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$800(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v10

    const/high16 v11, 0x800000

    invoke-virtual {v10, v11}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v10

    if-nez v10, :cond_5

    :cond_3
    const-string v10, "TAG"

    const-string v11, "TabContainer::refresh : tabMap is INVALID"

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v10, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$TabContainer;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mWindowTitleBar:Landroid/view/View;
    invoke-static {v10}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$2800(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/view/View;

    move-result-object v10

    if-eqz v10, :cond_4

    iget-object v10, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$TabContainer;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mWindowTitleBar:Landroid/view/View;
    invoke-static {v10}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$2800(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10, v12}, Landroid/view/View;->setVisibility(I)V

    :cond_4
    iget-object v10, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$TabContainer;->mTabRoot:Lcom/android/internal/policy/impl/MultiPhoneWindow$CustomTabLayout;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_5
    iget-object v10, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$TabContainer;->mTabRoot:Lcom/android/internal/policy/impl/MultiPhoneWindow$CustomTabLayout;

    invoke-virtual {v10}, Landroid/view/View;->getVisibility()I

    move-result v10

    if-eqz v10, :cond_6

    const-string v10, "TAG"

    const-string v11, "TabContainer::refresh : mTabHost is not visible"

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_6
    iget-object v10, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$TabContainer;->mTabHost:Landroid/widget/TabHost;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/widget/TabHost;->setOnTabChangedListener(Landroid/widget/TabHost$OnTabChangeListener;)V

    iget-object v10, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$TabContainer;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v10}, Landroid/widget/TabHost;->clearAllTabs()V

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_7
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/samsung/android/multiwindow/MultiWindowTab;

    invoke-virtual {v7}, Lcom/samsung/android/multiwindow/MultiWindowTab;->getStackId()I

    move-result v6

    const/4 v9, 0x0

    invoke-virtual {v7}, Lcom/samsung/android/multiwindow/MultiWindowTab;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    iget-object v10, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$TabContainer;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mActivity:Landroid/app/Activity;
    invoke-static {v10}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$100(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/app/Activity;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/ContextWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    if-eqz v5, :cond_7

    const/4 v10, 0x0

    :try_start_0
    invoke-virtual {v5, v1, v10}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/content/pm/ComponentInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v9

    new-instance v4, Landroid/widget/ImageView;

    iget-object v10, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$TabContainer;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContext:Landroid/content/Context;
    invoke-static {v10}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$000(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/content/Context;

    move-result-object v10

    invoke-direct {v4, v10}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    sget-object v10, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v4, v10}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    const/4 v10, 0x0

    const/16 v11, 0x14

    const/4 v12, 0x0

    const/16 v13, 0x14

    invoke-virtual {v4, v10, v11, v12, v13}, Landroid/view/View;->setPadding(IIII)V

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v4, v10}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    invoke-direct {p0, v1}, Lcom/android/internal/policy/impl/MultiPhoneWindow$TabContainer;->getMinimizedDrawable(Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    invoke-virtual {v4, v10}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v10, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$TabContainer;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContext:Landroid/content/Context;
    invoke-static {v10}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$000(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x1080675

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    invoke-virtual {v4, v10}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    new-instance v10, Lcom/android/internal/policy/impl/MultiPhoneWindow$TabContainer$2;

    invoke-direct {v10, p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow$TabContainer$2;-><init>(Lcom/android/internal/policy/impl/MultiPhoneWindow$TabContainer;)V

    invoke-virtual {v4, v10}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v10, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$TabContainer;->mTabHost:Landroid/widget/TabHost;

    iget-object v11, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$TabContainer;->mTabHost:Landroid/widget/TabHost;

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v11

    invoke-virtual {v11, v4}, Landroid/widget/TabHost$TabSpec;->setIndicator(Landroid/view/View;)Landroid/widget/TabHost$TabSpec;

    move-result-object v11

    new-instance v12, Lcom/android/internal/policy/impl/MultiPhoneWindow$TabContainer$3;

    invoke-direct {v12, p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow$TabContainer$3;-><init>(Lcom/android/internal/policy/impl/MultiPhoneWindow$TabContainer;)V

    invoke-virtual {v11, v12}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/widget/TabHost$TabContentFactory;)Landroid/widget/TabHost$TabSpec;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    iget-object v10, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$TabContainer;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;
    invoke-static {v10}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$3600(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Lcom/samsung/android/multiwindow/MultiWindowFacade;

    move-result-object v10

    if-eqz v10, :cond_7

    iget-object v10, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$TabContainer;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;
    invoke-static {v10}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$3600(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Lcom/samsung/android/multiwindow/MultiWindowFacade;

    move-result-object v10

    iget-object v11, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$TabContainer;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mToken:Landroid/os/IBinder;
    invoke-static {v11}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$3500(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/os/IBinder;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->getStackId(Landroid/os/IBinder;)I

    move-result v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/android/internal/policy/impl/MultiPhoneWindow$TabContainer;->setCurrentTabByTag(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_1

    :cond_8
    iget-object v10, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$TabContainer;->mTabHost:Landroid/widget/TabHost;

    iget-object v11, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$TabContainer;->mTabChangeListener:Landroid/widget/TabHost$OnTabChangeListener;

    invoke-virtual {v10, v11}, Landroid/widget/TabHost;->setOnTabChangedListener(Landroid/widget/TabHost$OnTabChangeListener;)V

    goto/16 :goto_0
.end method

.method public setCurrentTabByTag(Ljava/lang/String;)V
    .locals 3
    .param p1    # Ljava/lang/String;

    const-string v0, "TAG"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TabContainer::setCurrentTabByTag tag="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$TabContainer;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v0, p1}, Landroid/widget/TabHost;->setCurrentTabByTag(Ljava/lang/String;)V

    return-void
.end method

.method public setVisibility(Z)V
    .locals 2
    .param p1    # Z

    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$TabContainer;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$000(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->isSupportTabPenWindow(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$TabContainer;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mLastMultiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;
    invoke-static {v0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$3200(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v0

    const/high16 v1, 0x800000

    invoke-virtual {v0, v1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$TabContainer;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # invokes: Lcom/android/internal/policy/impl/MultiPhoneWindow;->hideTitleBar()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$6200(Lcom/android/internal/policy/impl/MultiPhoneWindow;)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$TabContainer;->mTabRoot:Lcom/android/internal/policy/impl/MultiPhoneWindow$CustomTabLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$TabContainer;->mTabRoot:Lcom/android/internal/policy/impl/MultiPhoneWindow$CustomTabLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method
