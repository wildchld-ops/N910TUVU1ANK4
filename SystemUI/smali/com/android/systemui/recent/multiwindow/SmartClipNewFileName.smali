.class public Lcom/android/systemui/recent/multiwindow/SmartClipNewFileName;
.super Ljava/lang/Object;
.source "SmartClipNewFileName.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/recent/multiwindow/SmartClipNewFileName$IndexMode;
    }
.end annotation


# static fields
.field private static final DEFAULT_INDEX:I = 0x0

.field private static final DRAG_DROP_INDEX:Ljava/lang/String; = "DragDropIndex"

.field private static final FILE_INDEX:Ljava/lang/String; = "CurrentIndex"

.field private static final FILE_NAME:Ljava/lang/String; = "SmartClipNewFileName"

.field private static final INVALID_VALUE:I = -0x1

.field private static final MAX_INDEX:I = 0x14

.field private static final TAG:Ljava/lang/String; = "SmartClipNewFileName"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDragDropIndex:I

.field private mFileIndex:I


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/recent/multiwindow/SmartClipNewFileName;->mContext:Landroid/content/Context;

    iput v1, p0, Lcom/android/systemui/recent/multiwindow/SmartClipNewFileName;->mFileIndex:I

    iput v1, p0, Lcom/android/systemui/recent/multiwindow/SmartClipNewFileName;->mDragDropIndex:I

    iput-object p1, p0, Lcom/android/systemui/recent/multiwindow/SmartClipNewFileName;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/android/systemui/recent/multiwindow/SmartClipNewFileName;->init()V

    return-void
.end method

.method private init()V
    .locals 4

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/android/systemui/recent/multiwindow/SmartClipNewFileName;->mContext:Landroid/content/Context;

    const-string v2, "SmartClipNewFileName"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "CurrentIndex"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/recent/multiwindow/SmartClipNewFileName;->mFileIndex:I

    const-string v1, "DragDropIndex"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/recent/multiwindow/SmartClipNewFileName;->mDragDropIndex:I

    return-void
.end method


# virtual methods
.method public getIndex(Lcom/android/systemui/recent/multiwindow/SmartClipNewFileName$IndexMode;)I
    .locals 3

    const/16 v2, 0x14

    const/4 v1, 0x0

    sget-object v0, Lcom/android/systemui/recent/multiwindow/SmartClipNewFileName$IndexMode;->FILE:Lcom/android/systemui/recent/multiwindow/SmartClipNewFileName$IndexMode;

    if-ne p1, v0, :cond_1

    iget v0, p0, Lcom/android/systemui/recent/multiwindow/SmartClipNewFileName;->mFileIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/systemui/recent/multiwindow/SmartClipNewFileName;->mFileIndex:I

    iget v0, p0, Lcom/android/systemui/recent/multiwindow/SmartClipNewFileName;->mFileIndex:I

    if-lt v0, v2, :cond_0

    iput v1, p0, Lcom/android/systemui/recent/multiwindow/SmartClipNewFileName;->mFileIndex:I

    :cond_0
    iget v0, p0, Lcom/android/systemui/recent/multiwindow/SmartClipNewFileName;->mFileIndex:I

    :goto_0
    return v0

    :cond_1
    sget-object v0, Lcom/android/systemui/recent/multiwindow/SmartClipNewFileName$IndexMode;->DRAGDRAP:Lcom/android/systemui/recent/multiwindow/SmartClipNewFileName$IndexMode;

    if-ne p1, v0, :cond_3

    iget v0, p0, Lcom/android/systemui/recent/multiwindow/SmartClipNewFileName;->mDragDropIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/systemui/recent/multiwindow/SmartClipNewFileName;->mDragDropIndex:I

    iget v0, p0, Lcom/android/systemui/recent/multiwindow/SmartClipNewFileName;->mDragDropIndex:I

    if-lt v0, v2, :cond_2

    iput v1, p0, Lcom/android/systemui/recent/multiwindow/SmartClipNewFileName;->mDragDropIndex:I

    :cond_2
    iget v0, p0, Lcom/android/systemui/recent/multiwindow/SmartClipNewFileName;->mDragDropIndex:I

    goto :goto_0

    :cond_3
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public saveIndex(Lcom/android/systemui/recent/multiwindow/SmartClipNewFileName$IndexMode;)V
    .locals 5

    iget-object v2, p0, Lcom/android/systemui/recent/multiwindow/SmartClipNewFileName;->mContext:Landroid/content/Context;

    const-string v3, "SmartClipNewFileName"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    sget-object v2, Lcom/android/systemui/recent/multiwindow/SmartClipNewFileName$IndexMode;->FILE:Lcom/android/systemui/recent/multiwindow/SmartClipNewFileName$IndexMode;

    if-ne p1, v2, :cond_0

    const-string v2, "CurrentIndex"

    iget v3, p0, Lcom/android/systemui/recent/multiwindow/SmartClipNewFileName;->mFileIndex:I

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    :goto_0
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void

    :cond_0
    const-string v2, "DragDropIndex"

    iget v3, p0, Lcom/android/systemui/recent/multiwindow/SmartClipNewFileName;->mDragDropIndex:I

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto :goto_0
.end method
