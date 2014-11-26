.class public Lcom/android/systemui/recent/multiwindowUtils/MultiWindowTrayInfo$LaunchItem;
.super Ljava/lang/Object;
.source "MultiWindowTrayInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/recent/multiwindowUtils/MultiWindowTrayInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LaunchItem"
.end annotation


# instance fields
.field private mDefaultTitle:Z

.field private mIcon:Landroid/graphics/drawable/BitmapDrawable;

.field mLists:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/util/Pair",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private mTaskId:I

.field private mTitle:Ljava/lang/CharSequence;

.field private mTumbnail:Landroid/graphics/Bitmap;

.field final synthetic this$0:Lcom/android/systemui/recent/multiwindowUtils/MultiWindowTrayInfo;


# direct methods
.method constructor <init>(Lcom/android/systemui/recent/multiwindowUtils/MultiWindowTrayInfo;Landroid/content/pm/ResolveInfo;)V
    .locals 5
    .param p2    # Landroid/content/pm/ResolveInfo;

    const/4 v2, 0x0

    iput-object p1, p0, Lcom/android/systemui/recent/multiwindowUtils/MultiWindowTrayInfo$LaunchItem;->this$0:Lcom/android/systemui/recent/multiwindowUtils/MultiWindowTrayInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/recent/multiwindowUtils/MultiWindowTrayInfo$LaunchItem;->mIcon:Landroid/graphics/drawable/BitmapDrawable;

    iput-object v2, p0, Lcom/android/systemui/recent/multiwindowUtils/MultiWindowTrayInfo$LaunchItem;->mTitle:Ljava/lang/CharSequence;

    iput-object v2, p0, Lcom/android/systemui/recent/multiwindowUtils/MultiWindowTrayInfo$LaunchItem;->mTumbnail:Landroid/graphics/Bitmap;

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/systemui/recent/multiwindowUtils/MultiWindowTrayInfo$LaunchItem;->mDefaultTitle:Z

    const/4 v2, -0x1

    iput v2, p0, Lcom/android/systemui/recent/multiwindowUtils/MultiWindowTrayInfo$LaunchItem;->mTaskId:I

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/recent/multiwindowUtils/MultiWindowTrayInfo$LaunchItem;->mLists:Ljava/util/List;

    iget-object v2, p0, Lcom/android/systemui/recent/multiwindowUtils/MultiWindowTrayInfo$LaunchItem;->mLists:Ljava/util/List;

    new-instance v3, Landroid/util/Pair;

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v3, p2, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    # getter for: Lcom/android/systemui/recent/multiwindowUtils/MultiWindowTrayInfo;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/android/systemui/recent/multiwindowUtils/MultiWindowTrayInfo;->access$000(Lcom/android/systemui/recent/multiwindowUtils/MultiWindowTrayInfo;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/recent/multiwindowUtils/MultiWindowTrayInfo$LaunchItem;->mTitle:Ljava/lang/CharSequence;

    # invokes: Lcom/android/systemui/recent/multiwindowUtils/MultiWindowTrayInfo;->loadIconForResolve(Landroid/content/pm/ResolveInfo;)Landroid/graphics/drawable/Drawable;
    invoke-static {p1, p2}, Lcom/android/systemui/recent/multiwindowUtils/MultiWindowTrayInfo;->access$100(Lcom/android/systemui/recent/multiwindowUtils/MultiWindowTrayInfo;Landroid/content/pm/ResolveInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicHeight()I

    move-result v4

    invoke-virtual {p1, v2, v3, v4}, Lcom/android/systemui/recent/multiwindowUtils/MultiWindowTrayInfo;->createShadowIcon(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v1

    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    # getter for: Lcom/android/systemui/recent/multiwindowUtils/MultiWindowTrayInfo;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/android/systemui/recent/multiwindowUtils/MultiWindowTrayInfo;->access$000(Lcom/android/systemui/recent/multiwindowUtils/MultiWindowTrayInfo;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iput-object v2, p0, Lcom/android/systemui/recent/multiwindowUtils/MultiWindowTrayInfo$LaunchItem;->mIcon:Landroid/graphics/drawable/BitmapDrawable;

    return-void
.end method

.method constructor <init>(Lcom/android/systemui/recent/multiwindowUtils/MultiWindowTrayInfo;Ljava/util/List;Ljava/lang/String;Z)V
    .locals 6
    .param p3    # Ljava/lang/String;
    .param p4    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/util/Pair",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            "Ljava/lang/Integer;",
            ">;>;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    const/4 v4, 0x0

    iput-object p1, p0, Lcom/android/systemui/recent/multiwindowUtils/MultiWindowTrayInfo$LaunchItem;->this$0:Lcom/android/systemui/recent/multiwindowUtils/MultiWindowTrayInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v4, p0, Lcom/android/systemui/recent/multiwindowUtils/MultiWindowTrayInfo$LaunchItem;->mIcon:Landroid/graphics/drawable/BitmapDrawable;

    iput-object v4, p0, Lcom/android/systemui/recent/multiwindowUtils/MultiWindowTrayInfo$LaunchItem;->mTitle:Ljava/lang/CharSequence;

    iput-object v4, p0, Lcom/android/systemui/recent/multiwindowUtils/MultiWindowTrayInfo$LaunchItem;->mTumbnail:Landroid/graphics/Bitmap;

    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/systemui/recent/multiwindowUtils/MultiWindowTrayInfo$LaunchItem;->mDefaultTitle:Z

    const/4 v4, -0x1

    iput v4, p0, Lcom/android/systemui/recent/multiwindowUtils/MultiWindowTrayInfo$LaunchItem;->mTaskId:I

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/android/systemui/recent/multiwindowUtils/MultiWindowTrayInfo$LaunchItem;->mLists:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Pair;

    iget-object v4, p0, Lcom/android/systemui/recent/multiwindowUtils/MultiWindowTrayInfo$LaunchItem;->mLists:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v4, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-le v4, v2, :cond_0

    iget-object v4, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Landroid/content/pm/ResolveInfo;

    # invokes: Lcom/android/systemui/recent/multiwindowUtils/MultiWindowTrayInfo;->loadIconForResolve(Landroid/content/pm/ResolveInfo;)Landroid/graphics/drawable/Drawable;
    invoke-static {p1, v4}, Lcom/android/systemui/recent/multiwindowUtils/MultiWindowTrayInfo;->access$100(Lcom/android/systemui/recent/multiwindowUtils/MultiWindowTrayInfo;Landroid/content/pm/ResolveInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    iget-object v4, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    iget-object v4, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Landroid/content/pm/ResolveInfo;

    # invokes: Lcom/android/systemui/recent/multiwindowUtils/MultiWindowTrayInfo;->loadIconForResolve(Landroid/content/pm/ResolveInfo;)Landroid/graphics/drawable/Drawable;
    invoke-static {p1, v4}, Lcom/android/systemui/recent/multiwindowUtils/MultiWindowTrayInfo;->access$100(Lcom/android/systemui/recent/multiwindowUtils/MultiWindowTrayInfo;Landroid/content/pm/ResolveInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-interface {v0, v5, v4}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_1

    :cond_1
    if-eqz p3, :cond_2

    iput-object p3, p0, Lcom/android/systemui/recent/multiwindowUtils/MultiWindowTrayInfo$LaunchItem;->mTitle:Ljava/lang/CharSequence;

    :goto_2
    # invokes: Lcom/android/systemui/recent/multiwindowUtils/MultiWindowTrayInfo;->generateMultiIcon(Ljava/util/List;)Landroid/graphics/drawable/BitmapDrawable;
    invoke-static {p1, v0}, Lcom/android/systemui/recent/multiwindowUtils/MultiWindowTrayInfo;->access$200(Lcom/android/systemui/recent/multiwindowUtils/MultiWindowTrayInfo;Ljava/util/List;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v4

    iput-object v4, p0, Lcom/android/systemui/recent/multiwindowUtils/MultiWindowTrayInfo$LaunchItem;->mIcon:Landroid/graphics/drawable/BitmapDrawable;

    iput-boolean p4, p0, Lcom/android/systemui/recent/multiwindowUtils/MultiWindowTrayInfo$LaunchItem;->mDefaultTitle:Z

    return-void

    :cond_2
    invoke-virtual {p1}, Lcom/android/systemui/recent/multiwindowUtils/MultiWindowTrayInfo;->getAvailableTemplateText()Ljava/lang/CharSequence;

    move-result-object v4

    iput-object v4, p0, Lcom/android/systemui/recent/multiwindowUtils/MultiWindowTrayInfo$LaunchItem;->mTitle:Ljava/lang/CharSequence;

    goto :goto_2
.end method


# virtual methods
.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recent/multiwindowUtils/MultiWindowTrayInfo$LaunchItem;->mIcon:Landroid/graphics/drawable/BitmapDrawable;

    return-object v0
.end method

.method public getLists()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/util/Pair",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/systemui/recent/multiwindowUtils/MultiWindowTrayInfo$LaunchItem;->mLists:Ljava/util/List;

    return-object v0
.end method

.method public getResolveInfo()Landroid/content/pm/ResolveInfo;
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/recent/multiwindowUtils/MultiWindowTrayInfo$LaunchItem;->mLists:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Landroid/content/pm/ResolveInfo;

    return-object v0
.end method

.method public getResolveInfo2()Landroid/content/pm/ResolveInfo;
    .locals 4

    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/android/systemui/recent/multiwindowUtils/MultiWindowTrayInfo$LaunchItem;->getLists()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const-string v1, "MultiWindowTrayInfo"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getResolveInfo2() return. mLists.get(1).first="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/android/systemui/recent/multiwindowUtils/MultiWindowTrayInfo$LaunchItem;->mLists:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/recent/multiwindowUtils/MultiWindowTrayInfo$LaunchItem;->mLists:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Landroid/content/pm/ResolveInfo;

    goto :goto_0
.end method

.method public getTaskId()I
    .locals 1

    iget v0, p0, Lcom/android/systemui/recent/multiwindowUtils/MultiWindowTrayInfo$LaunchItem;->mTaskId:I

    return v0
.end method

.method public getThumbnail()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recent/multiwindowUtils/MultiWindowTrayInfo$LaunchItem;->mTumbnail:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 6

    invoke-virtual {p0}, Lcom/android/systemui/recent/multiwindowUtils/MultiWindowTrayInfo$LaunchItem;->getLists()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x2

    if-ge v3, v4, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/recent/multiwindowUtils/MultiWindowTrayInfo$LaunchItem;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/recent/multiwindowUtils/MultiWindowTrayInfo$LaunchItem;->this$0:Lcom/android/systemui/recent/multiwindowUtils/MultiWindowTrayInfo;

    # getter for: Lcom/android/systemui/recent/multiwindowUtils/MultiWindowTrayInfo;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/systemui/recent/multiwindowUtils/MultiWindowTrayInfo;->access$000(Lcom/android/systemui/recent/multiwindowUtils/MultiWindowTrayInfo;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    :cond_0
    :goto_0
    return-object v2

    :cond_1
    iget-boolean v3, p0, Lcom/android/systemui/recent/multiwindowUtils/MultiWindowTrayInfo$LaunchItem;->mDefaultTitle:Z

    if-eqz v3, :cond_3

    invoke-virtual {p0}, Lcom/android/systemui/recent/multiwindowUtils/MultiWindowTrayInfo$LaunchItem;->getLists()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2}, Ljava/lang/String;-><init>()V

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v1, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/systemui/recent/multiwindowUtils/MultiWindowTrayInfo$LaunchItem;->getLists()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Pair;

    iget-object v3, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Landroid/content/pm/ResolveInfo;

    iget-object v5, p0, Lcom/android/systemui/recent/multiwindowUtils/MultiWindowTrayInfo$LaunchItem;->this$0:Lcom/android/systemui/recent/multiwindowUtils/MultiWindowTrayInfo;

    # getter for: Lcom/android/systemui/recent/multiwindowUtils/MultiWindowTrayInfo;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/systemui/recent/multiwindowUtils/MultiWindowTrayInfo;->access$000(Lcom/android/systemui/recent/multiwindowUtils/MultiWindowTrayInfo;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v3, v1, -0x1

    if-eq v0, v3, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    iget-object v2, p0, Lcom/android/systemui/recent/multiwindowUtils/MultiWindowTrayInfo$LaunchItem;->mTitle:Ljava/lang/CharSequence;

    goto :goto_0
.end method

.method public isDefaultTitle()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/recent/multiwindowUtils/MultiWindowTrayInfo$LaunchItem;->mDefaultTitle:Z

    return v0
.end method

.method public refreshItemIcon()V
    .locals 10

    invoke-virtual {p0}, Lcom/android/systemui/recent/multiwindowUtils/MultiWindowTrayInfo$LaunchItem;->getLists()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    const/4 v7, 0x1

    if-le v6, v7, :cond_2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    iget-object v6, p0, Lcom/android/systemui/recent/multiwindowUtils/MultiWindowTrayInfo$LaunchItem;->mLists:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/Pair;

    iget-object v6, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-le v6, v3, :cond_0

    iget-object v7, p0, Lcom/android/systemui/recent/multiwindowUtils/MultiWindowTrayInfo$LaunchItem;->this$0:Lcom/android/systemui/recent/multiwindowUtils/MultiWindowTrayInfo;

    iget-object v6, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Landroid/content/pm/ResolveInfo;

    # invokes: Lcom/android/systemui/recent/multiwindowUtils/MultiWindowTrayInfo;->loadIconForResolve(Landroid/content/pm/ResolveInfo;)Landroid/graphics/drawable/Drawable;
    invoke-static {v7, v6}, Lcom/android/systemui/recent/multiwindowUtils/MultiWindowTrayInfo;->access$100(Lcom/android/systemui/recent/multiwindowUtils/MultiWindowTrayInfo;Landroid/content/pm/ResolveInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    iget-object v6, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v3

    goto :goto_0

    :cond_0
    const/4 v7, 0x0

    iget-object v8, p0, Lcom/android/systemui/recent/multiwindowUtils/MultiWindowTrayInfo$LaunchItem;->this$0:Lcom/android/systemui/recent/multiwindowUtils/MultiWindowTrayInfo;

    iget-object v6, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Landroid/content/pm/ResolveInfo;

    # invokes: Lcom/android/systemui/recent/multiwindowUtils/MultiWindowTrayInfo;->loadIconForResolve(Landroid/content/pm/ResolveInfo;)Landroid/graphics/drawable/Drawable;
    invoke-static {v8, v6}, Lcom/android/systemui/recent/multiwindowUtils/MultiWindowTrayInfo;->access$100(Lcom/android/systemui/recent/multiwindowUtils/MultiWindowTrayInfo;Landroid/content/pm/ResolveInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-interface {v0, v7, v6}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_1

    :cond_1
    iget-object v6, p0, Lcom/android/systemui/recent/multiwindowUtils/MultiWindowTrayInfo$LaunchItem;->this$0:Lcom/android/systemui/recent/multiwindowUtils/MultiWindowTrayInfo;

    # invokes: Lcom/android/systemui/recent/multiwindowUtils/MultiWindowTrayInfo;->generateMultiIcon(Ljava/util/List;)Landroid/graphics/drawable/BitmapDrawable;
    invoke-static {v6, v0}, Lcom/android/systemui/recent/multiwindowUtils/MultiWindowTrayInfo;->access$200(Lcom/android/systemui/recent/multiwindowUtils/MultiWindowTrayInfo;Ljava/util/List;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v6

    iput-object v6, p0, Lcom/android/systemui/recent/multiwindowUtils/MultiWindowTrayInfo$LaunchItem;->mIcon:Landroid/graphics/drawable/BitmapDrawable;

    :goto_2
    return-void

    :cond_2
    iget-object v6, p0, Lcom/android/systemui/recent/multiwindowUtils/MultiWindowTrayInfo$LaunchItem;->this$0:Lcom/android/systemui/recent/multiwindowUtils/MultiWindowTrayInfo;

    invoke-virtual {p0}, Lcom/android/systemui/recent/multiwindowUtils/MultiWindowTrayInfo$LaunchItem;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v7

    # invokes: Lcom/android/systemui/recent/multiwindowUtils/MultiWindowTrayInfo;->loadIconForResolve(Landroid/content/pm/ResolveInfo;)Landroid/graphics/drawable/Drawable;
    invoke-static {v6, v7}, Lcom/android/systemui/recent/multiwindowUtils/MultiWindowTrayInfo;->access$100(Lcom/android/systemui/recent/multiwindowUtils/MultiWindowTrayInfo;Landroid/content/pm/ResolveInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v6, p0, Lcom/android/systemui/recent/multiwindowUtils/MultiWindowTrayInfo$LaunchItem;->this$0:Lcom/android/systemui/recent/multiwindowUtils/MultiWindowTrayInfo;

    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v7

    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicWidth()I

    move-result v8

    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicHeight()I

    move-result v9

    invoke-virtual {v6, v7, v8, v9}, Lcom/android/systemui/recent/multiwindowUtils/MultiWindowTrayInfo;->createShadowIcon(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v5

    new-instance v6, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v7, p0, Lcom/android/systemui/recent/multiwindowUtils/MultiWindowTrayInfo$LaunchItem;->this$0:Lcom/android/systemui/recent/multiwindowUtils/MultiWindowTrayInfo;

    # getter for: Lcom/android/systemui/recent/multiwindowUtils/MultiWindowTrayInfo;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/android/systemui/recent/multiwindowUtils/MultiWindowTrayInfo;->access$000(Lcom/android/systemui/recent/multiwindowUtils/MultiWindowTrayInfo;)Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-direct {v6, v7, v5}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iput-object v6, p0, Lcom/android/systemui/recent/multiwindowUtils/MultiWindowTrayInfo$LaunchItem;->mIcon:Landroid/graphics/drawable/BitmapDrawable;

    goto :goto_2
.end method

.method public setTaskId(I)V
    .locals 0
    .param p1    # I

    iput p1, p0, Lcom/android/systemui/recent/multiwindowUtils/MultiWindowTrayInfo$LaunchItem;->mTaskId:I

    return-void
.end method

.method public setThumbnail(Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1    # Landroid/graphics/Bitmap;

    iput-object p1, p0, Lcom/android/systemui/recent/multiwindowUtils/MultiWindowTrayInfo$LaunchItem;->mTumbnail:Landroid/graphics/Bitmap;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;

    iput-object p1, p0, Lcom/android/systemui/recent/multiwindowUtils/MultiWindowTrayInfo$LaunchItem;->mTitle:Ljava/lang/CharSequence;

    return-void
.end method

.method public updateResolveInfo(Landroid/content/pm/ResolveInfo;)V
    .locals 5
    .param p1    # Landroid/content/pm/ResolveInfo;

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/systemui/recent/multiwindowUtils/MultiWindowTrayInfo$LaunchItem;->mLists:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    iget-object v2, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v2, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/systemui/recent/multiwindowUtils/MultiWindowTrayInfo$LaunchItem;->mLists:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    iget-object v2, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Landroid/content/pm/ResolveInfo;

    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/recent/multiwindowUtils/MultiWindowTrayInfo$LaunchItem;->mLists:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/recent/multiwindowUtils/MultiWindowTrayInfo$LaunchItem;->mLists:Ljava/util/List;

    iget-object v3, p0, Lcom/android/systemui/recent/multiwindowUtils/MultiWindowTrayInfo$LaunchItem;->mLists:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/android/systemui/recent/multiwindowUtils/MultiWindowTrayInfo$LaunchItem;->mLists:Ljava/util/List;

    new-instance v3, Landroid/util/Pair;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v3, p1, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v2, v0, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
