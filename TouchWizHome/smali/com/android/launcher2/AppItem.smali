.class public Lcom/android/launcher2/AppItem;
.super Lcom/android/launcher2/BaseItem;
.source "AppItem.java"


# static fields
.field private static final DEBUGGABLE:Z


# instance fields
.field public mCell:I

.field public final mComponentName:Landroid/content/ComponentName;

.field public mCreateTime:J

.field protected mFolder:Lcom/android/launcher2/AppFolderItem;

.field public mHidden:Z

.field private mSavedCell:I

.field private mSavedDirty:Z

.field private mSavedFolder:Lcom/android/launcher2/AppFolderItem;

.field private mSavedHidden:Z

.field private mSavedScreen:I

.field private mSavedSecret:Z

.field public mScreenLocation:[I

.field public final mSystemApp:Z

.field public mUnavailable:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/android/launcher2/Utilities;->DEBUGGABLE()Z

    move-result v0

    sput-boolean v0, Lcom/android/launcher2/AppItem;->DEBUGGABLE:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/ComponentName;Z)V
    .locals 3
    .param p1    # Landroid/content/ComponentName;
    .param p2    # Z

    const/4 v2, 0x0

    sget-object v0, Lcom/android/launcher2/BaseItem$Type;->MENU_APP:Lcom/android/launcher2/BaseItem$Type;

    invoke-direct {p0, v0}, Lcom/android/launcher2/BaseItem;-><init>(Lcom/android/launcher2/BaseItem$Type;)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/launcher2/AppItem;->mCell:I

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/launcher2/AppItem;->mCreateTime:J

    iput-boolean v2, p0, Lcom/android/launcher2/AppItem;->mHidden:Z

    iput-boolean v2, p0, Lcom/android/launcher2/AppItem;->mUnavailable:Z

    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/launcher2/AppItem;->mScreenLocation:[I

    iput-object p1, p0, Lcom/android/launcher2/AppItem;->mComponentName:Landroid/content/ComponentName;

    iput-boolean p2, p0, Lcom/android/launcher2/AppItem;->mSystemApp:Z

    return-void
.end method

.method protected constructor <init>(Lcom/android/launcher2/BaseItem$Type;Landroid/content/ComponentName;Z)V
    .locals 3
    .param p1    # Lcom/android/launcher2/BaseItem$Type;
    .param p2    # Landroid/content/ComponentName;
    .param p3    # Z

    const/4 v2, 0x0

    invoke-direct {p0, p1}, Lcom/android/launcher2/BaseItem;-><init>(Lcom/android/launcher2/BaseItem$Type;)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/launcher2/AppItem;->mCell:I

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/launcher2/AppItem;->mCreateTime:J

    iput-boolean v2, p0, Lcom/android/launcher2/AppItem;->mHidden:Z

    iput-boolean v2, p0, Lcom/android/launcher2/AppItem;->mUnavailable:Z

    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/launcher2/AppItem;->mScreenLocation:[I

    iput-object p2, p0, Lcom/android/launcher2/AppItem;->mComponentName:Landroid/content/ComponentName;

    iput-boolean p3, p0, Lcom/android/launcher2/AppItem;->mSystemApp:Z

    return-void
.end method

.method public static dumpApplicationInfoList(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 5
    .param p0    # Ljava/lang/String;
    .param p1    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/AppItem;",
            ">;)V"
        }
    .end annotation

    sget-boolean v2, Lcom/android/launcher2/AppItem;->DEBUGGABLE:Z

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " size="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/AppItem;

    sget-boolean v2, Lcom/android/launcher2/AppItem;->DEBUGGABLE:Z

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "   title=\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v1, Lcom/android/launcher2/BaseItem;->mTitle:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\" iconBitmap="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v1, Lcom/android/launcher2/BaseItem;->mIconBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " createTime="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, v1, Lcom/android/launcher2/AppItem;->mCreateTime:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    return-void
.end method

.method private freeEditResources()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher2/AppItem;->mSavedFolder:Lcom/android/launcher2/AppFolderItem;

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/launcher2/AppItem;->mFolder:Lcom/android/launcher2/AppFolderItem;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/AppItem;->mFolder:Lcom/android/launcher2/AppFolderItem;

    invoke-virtual {v0, p0}, Lcom/android/launcher2/AppFolderItem;->childDestroyed(Lcom/android/launcher2/AppItem;)V

    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/AppItem;->mSavedFolder:Lcom/android/launcher2/AppFolderItem;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher2/AppItem;->mSavedFolder:Lcom/android/launcher2/AppFolderItem;

    iget-object v1, p0, Lcom/android/launcher2/AppItem;->mFolder:Lcom/android/launcher2/AppFolderItem;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/launcher2/AppItem;->mSavedFolder:Lcom/android/launcher2/AppFolderItem;

    invoke-virtual {v0, p0}, Lcom/android/launcher2/AppFolderItem;->childDestroyed(Lcom/android/launcher2/AppItem;)V

    :cond_1
    iput-object v2, p0, Lcom/android/launcher2/AppItem;->mFolder:Lcom/android/launcher2/AppFolderItem;

    iput-object v2, p0, Lcom/android/launcher2/BaseItem;->mTitle:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/launcher2/BaseItem;->mIconBitmap:Landroid/graphics/Bitmap;

    iput-object v2, p0, Lcom/android/launcher2/BaseItem;->mIconShadowBitmap:Landroid/graphics/Bitmap;

    iput-object v2, p0, Lcom/android/launcher2/AppItem;->mSavedFolder:Lcom/android/launcher2/AppFolderItem;

    return-void
.end method

.method public editBegin()V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/AppItem;->mFolder:Lcom/android/launcher2/AppFolderItem;

    iput-object v0, p0, Lcom/android/launcher2/AppItem;->mSavedFolder:Lcom/android/launcher2/AppFolderItem;

    iget v0, p0, Lcom/android/launcher2/BaseItem;->mScreen:I

    iput v0, p0, Lcom/android/launcher2/AppItem;->mSavedScreen:I

    iget v0, p0, Lcom/android/launcher2/AppItem;->mCell:I

    iput v0, p0, Lcom/android/launcher2/AppItem;->mSavedCell:I

    iget-boolean v0, p0, Lcom/android/launcher2/BaseItem;->mDirty:Z

    iput-boolean v0, p0, Lcom/android/launcher2/AppItem;->mSavedDirty:Z

    iget-boolean v0, p0, Lcom/android/launcher2/AppItem;->mHidden:Z

    iput-boolean v0, p0, Lcom/android/launcher2/AppItem;->mSavedHidden:Z

    iget-boolean v0, p0, Lcom/android/launcher2/BaseItem;->mSecretItem:Z

    iput-boolean v0, p0, Lcom/android/launcher2/AppItem;->mSavedSecret:Z

    return-void
.end method

.method public editCommit()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher2/AppItem;->editIsDirty(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher2/BaseItem;->mDirty:Z

    :cond_0
    invoke-direct {p0}, Lcom/android/launcher2/AppItem;->freeEditResources()V

    return-void
.end method

.method public editIsDirty(Z)Z
    .locals 2
    .param p1    # Z

    iget-object v0, p0, Lcom/android/launcher2/AppItem;->mSavedFolder:Lcom/android/launcher2/AppFolderItem;

    iget-object v1, p0, Lcom/android/launcher2/AppItem;->mFolder:Lcom/android/launcher2/AppFolderItem;

    if-ne v0, v1, :cond_0

    if-nez p1, :cond_1

    iget v0, p0, Lcom/android/launcher2/AppItem;->mSavedScreen:I

    iget v1, p0, Lcom/android/launcher2/BaseItem;->mScreen:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/android/launcher2/AppItem;->mSavedCell:I

    iget v1, p0, Lcom/android/launcher2/AppItem;->mCell:I

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/android/launcher2/AppItem;->mSavedHidden:Z

    iget-boolean v1, p0, Lcom/android/launcher2/AppItem;->mHidden:Z

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/android/launcher2/AppItem;->mSavedSecret:Z

    iget-boolean v1, p0, Lcom/android/launcher2/BaseItem;->mSecretItem:Z

    if-eq v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public editParentDestroyed()V
    .locals 2

    const/4 v1, -0x1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher2/AppItem;->mFolder:Lcom/android/launcher2/AppFolderItem;

    iput v1, p0, Lcom/android/launcher2/BaseItem;->mScreen:I

    iput v1, p0, Lcom/android/launcher2/AppItem;->mCell:I

    return-void
.end method

.method public editRevert()V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/AppItem;->mSavedFolder:Lcom/android/launcher2/AppFolderItem;

    iput-object v0, p0, Lcom/android/launcher2/AppItem;->mFolder:Lcom/android/launcher2/AppFolderItem;

    iget v0, p0, Lcom/android/launcher2/AppItem;->mSavedScreen:I

    iput v0, p0, Lcom/android/launcher2/BaseItem;->mScreen:I

    iget v0, p0, Lcom/android/launcher2/AppItem;->mSavedCell:I

    iput v0, p0, Lcom/android/launcher2/AppItem;->mCell:I

    iget-boolean v0, p0, Lcom/android/launcher2/AppItem;->mSavedDirty:Z

    iput-boolean v0, p0, Lcom/android/launcher2/BaseItem;->mDirty:Z

    iget-boolean v0, p0, Lcom/android/launcher2/AppItem;->mSavedHidden:Z

    iput-boolean v0, p0, Lcom/android/launcher2/AppItem;->mHidden:Z

    iget-boolean v0, p0, Lcom/android/launcher2/AppItem;->mSavedSecret:Z

    iput-boolean v0, p0, Lcom/android/launcher2/BaseItem;->mSecretItem:Z

    invoke-direct {p0}, Lcom/android/launcher2/AppItem;->freeEditResources()V

    return-void
.end method

.method public editRevertCell()V
    .locals 1

    iget v0, p0, Lcom/android/launcher2/AppItem;->mSavedCell:I

    iput v0, p0, Lcom/android/launcher2/AppItem;->mCell:I

    return-void
.end method

.method public getComponentName()Landroid/content/ComponentName;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/AppItem;->mComponentName:Landroid/content/ComponentName;

    return-object v0
.end method

.method public getLaunchIntent()Landroid/content/Intent;
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/launcher2/AppItem;->mComponentName:Landroid/content/ComponentName;

    if-eqz v1, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/launcher2/AppItem;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const/high16 v1, 0x10200000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    :cond_0
    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/launcher2/AppItem;->mComponentName:Landroid/content/ComponentName;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher2/AppItem;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getPosition()I
    .locals 3

    const/4 v0, -0x1

    iget-object v1, p0, Lcom/android/launcher2/AppItem;->mFolder:Lcom/android/launcher2/AppFolderItem;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/launcher2/MenuAppModel;->INSTANCE:Lcom/android/launcher2/MenuAppModel;

    invoke-virtual {v1}, Lcom/android/launcher2/MenuAppModel;->getCurrentComparator()Ljava/util/Comparator;

    move-result-object v1

    sget-object v2, Lcom/android/launcher2/MenuAppModel;->MENU_ALPHA_NORMALIZER:Lcom/android/launcher2/MenuAppModel$Normalizer;

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/launcher2/AppItem;->mFolder:Lcom/android/launcher2/AppFolderItem;

    invoke-virtual {v1}, Lcom/android/launcher2/AppFolderItem;->getAllItems()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/android/launcher2/AppItem;->mFolder:Lcom/android/launcher2/AppFolderItem;

    if-nez v1, :cond_1

    iget v0, p0, Lcom/android/launcher2/AppItem;->mCell:I

    :goto_1
    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/android/launcher2/BaseItem;->mScreen:I

    goto :goto_1
.end method

.method public getSavedCell()I
    .locals 1

    iget v0, p0, Lcom/android/launcher2/AppItem;->mSavedCell:I

    return v0
.end method

.method public getSavedScreen()I
    .locals 1

    iget v0, p0, Lcom/android/launcher2/AppItem;->mSavedScreen:I

    return v0
.end method

.method public hide()V
    .locals 1

    const/4 v0, -0x1

    invoke-virtual {p0}, Lcom/android/launcher2/AppItem;->removeFromFolder()V

    iput v0, p0, Lcom/android/launcher2/BaseItem;->mScreen:I

    iput v0, p0, Lcom/android/launcher2/AppItem;->mCell:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher2/AppItem;->mHidden:Z

    return-void
.end method

.method public makeHomeItem()Lcom/android/launcher2/HomeShortcutItem;
    .locals 2

    new-instance v0, Lcom/android/launcher2/HomeShortcutItem;

    sget-object v1, Lcom/android/launcher2/BaseItem$Type;->HOME_APPLICATION:Lcom/android/launcher2/BaseItem$Type;

    invoke-direct {v0, v1}, Lcom/android/launcher2/HomeShortcutItem;-><init>(Lcom/android/launcher2/BaseItem$Type;)V

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/launcher2/HomeShortcutItem;->customIcon:Z

    iget-object v1, p0, Lcom/android/launcher2/BaseItem;->mTitle:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/launcher2/BaseItem;->mTitle:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/launcher2/AppItem;->getLaunchIntent()Landroid/content/Intent;

    move-result-object v1

    iput-object v1, v0, Lcom/android/launcher2/HomeShortcutItem;->intent:Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/launcher2/BaseItem;->mIconShadowBitmap:Landroid/graphics/Bitmap;

    iput-object v1, v0, Lcom/android/launcher2/BaseItem;->mIconShadowBitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/android/launcher2/BaseItem;->mIconBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Lcom/android/launcher2/HomeShortcutItem;->setIcon(Landroid/graphics/Bitmap;)V

    iget v1, p0, Lcom/android/launcher2/BaseItem;->mColor:I

    iput v1, v0, Lcom/android/launcher2/BaseItem;->mColor:I

    iget-boolean v1, p0, Lcom/android/launcher2/BaseItem;->mSecretItem:Z

    iput-boolean v1, v0, Lcom/android/launcher2/BaseItem;->mSecretItem:Z

    iget v1, p0, Lcom/android/launcher2/BaseItem;->mBadgeCount:I

    iput v1, v0, Lcom/android/launcher2/BaseItem;->mBadgeCount:I

    return-object v0
.end method

.method public moveSecretBox()V
    .locals 1

    const/4 v0, -0x1

    invoke-virtual {p0}, Lcom/android/launcher2/AppItem;->removeFromFolder()V

    iput v0, p0, Lcom/android/launcher2/BaseItem;->mScreen:I

    iput v0, p0, Lcom/android/launcher2/AppItem;->mCell:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher2/BaseItem;->mSecretItem:Z

    return-void
.end method

.method public parentDestroyed(Lcom/android/launcher2/AppFolderItem;)V
    .locals 3
    .param p1    # Lcom/android/launcher2/AppFolderItem;

    const/4 v2, 0x0

    const/4 v1, -0x1

    iget-object v0, p0, Lcom/android/launcher2/AppItem;->mFolder:Lcom/android/launcher2/AppFolderItem;

    if-ne p1, v0, :cond_0

    iput-object v2, p0, Lcom/android/launcher2/AppItem;->mFolder:Lcom/android/launcher2/AppFolderItem;

    iput v1, p0, Lcom/android/launcher2/BaseItem;->mScreen:I

    iput v1, p0, Lcom/android/launcher2/AppItem;->mCell:I

    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/AppItem;->mSavedFolder:Lcom/android/launcher2/AppFolderItem;

    if-ne p1, v0, :cond_1

    iput-object v2, p0, Lcom/android/launcher2/AppItem;->mSavedFolder:Lcom/android/launcher2/AppFolderItem;

    iput v1, p0, Lcom/android/launcher2/AppItem;->mSavedScreen:I

    iput v1, p0, Lcom/android/launcher2/AppItem;->mSavedCell:I

    :cond_1
    return-void
.end method

.method public removeFromFolder()V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher2/AppItem;->mFolder:Lcom/android/launcher2/AppFolderItem;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Lcom/android/launcher2/AppFolderItem;->removeItem(Lcom/android/launcher2/BaseItem;)V

    iget v1, v0, Lcom/android/launcher2/BaseItem;->mScreen:I

    iput v1, p0, Lcom/android/launcher2/BaseItem;->mScreen:I

    iget v1, v0, Lcom/android/launcher2/AppItem;->mCell:I

    iput v1, p0, Lcom/android/launcher2/AppItem;->mCell:I

    :cond_0
    return-void
.end method

.method public removeSecretBox()V
    .locals 1

    const/4 v0, -0x1

    invoke-virtual {p0}, Lcom/android/launcher2/AppItem;->removeFromFolder()V

    iput v0, p0, Lcom/android/launcher2/BaseItem;->mScreen:I

    iput v0, p0, Lcom/android/launcher2/AppItem;->mCell:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher2/BaseItem;->mSecretItem:Z

    return-void
.end method

.method public setPosition(I)V
    .locals 1
    .param p1    # I

    iget-object v0, p0, Lcom/android/launcher2/AppItem;->mFolder:Lcom/android/launcher2/AppFolderItem;

    if-eqz v0, :cond_0

    iput p1, p0, Lcom/android/launcher2/BaseItem;->mScreen:I

    :goto_0
    return-void

    :cond_0
    iput p1, p0, Lcom/android/launcher2/AppItem;->mCell:I

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Item(id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/launcher2/BaseItem;->mId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " folderId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/android/launcher2/AppItem;->mFolder:Lcom/android/launcher2/AppFolderItem;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/AppItem;->mFolder:Lcom/android/launcher2/AppFolderItem;

    iget-wide v0, v0, Lcom/android/launcher2/BaseItem;->mId:J

    :goto_0
    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " screen="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher2/BaseItem;->mScreen:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " cell="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher2/AppItem;->mCell:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " title="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher2/BaseItem;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " componentName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher2/AppItem;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " unavailable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/launcher2/AppItem;->mUnavailable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method public unhide()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher2/AppItem;->mHidden:Z

    return-void
.end method
