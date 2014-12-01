.class public Lcom/android/mms/prioritysender/PrioritySenderListCursor;
.super Ljava/lang/Object;
.source "PrioritySenderListCursor.java"

# interfaces
.implements Landroid/database/Cursor;


# static fields
.field private static final TAG:Ljava/lang/String; = "Mms/PrioritySenderListCursor"


# instance fields
.field private mCount:I

.field private mCursorCount:I

.field private mDatabaseCursor:Landroid/database/Cursor;

.field private mDummyExist:Z

.field private mEditMode:Z

.field private mInitRows:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mPos:I

.field private mRows:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/database/Cursor;Z)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/mms/prioritysender/PrioritySenderListCursor;->mRows:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/mms/prioritysender/PrioritySenderListCursor;->mInitRows:Ljava/util/ArrayList;

    iput-boolean v1, p0, Lcom/android/mms/prioritysender/PrioritySenderListCursor;->mEditMode:Z

    iput v1, p0, Lcom/android/mms/prioritysender/PrioritySenderListCursor;->mCursorCount:I

    iput v1, p0, Lcom/android/mms/prioritysender/PrioritySenderListCursor;->mCount:I

    iput v1, p0, Lcom/android/mms/prioritysender/PrioritySenderListCursor;->mPos:I

    iput-boolean v1, p0, Lcom/android/mms/prioritysender/PrioritySenderListCursor;->mDummyExist:Z

    iput-object p1, p0, Lcom/android/mms/prioritysender/PrioritySenderListCursor;->mDatabaseCursor:Landroid/database/Cursor;

    iget-object v0, p0, Lcom/android/mms/prioritysender/PrioritySenderListCursor;->mDatabaseCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/prioritysender/PrioritySenderListCursor;->mDatabaseCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    iput v0, p0, Lcom/android/mms/prioritysender/PrioritySenderListCursor;->mCursorCount:I

    :cond_0
    invoke-virtual {p0, p2}, Lcom/android/mms/prioritysender/PrioritySenderListCursor;->setEditMode(Z)V

    return-void
.end method

.method private computeRows()V
    .locals 3

    const-string v1, "Mms/PrioritySenderListCursor"

    const-string v2, "start computeRows"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/android/mms/prioritysender/PrioritySenderListCursor;->mCursorCount:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/prioritysender/PrioritySenderListCursor;->mRows:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/mms/prioritysender/PrioritySenderListCursor;->mInitRows:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const-string v1, "Mms/PrioritySenderListCursor"

    const-string v2, "end computeRows"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public changeOrder(II)Z
    .locals 3

    const/4 v1, 0x0

    iget-boolean v2, p0, Lcom/android/mms/prioritysender/PrioritySenderListCursor;->mEditMode:Z

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    if-ltz p1, :cond_0

    iget v2, p0, Lcom/android/mms/prioritysender/PrioritySenderListCursor;->mCount:I

    if-ge p1, v2, :cond_0

    if-ltz p2, :cond_0

    iget v2, p0, Lcom/android/mms/prioritysender/PrioritySenderListCursor;->mCount:I

    if-ge p2, v2, :cond_0

    iget-object v1, p0, Lcom/android/mms/prioritysender/PrioritySenderListCursor;->mRows:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lcom/android/mms/prioritysender/PrioritySenderListCursor;->mRows:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/mms/prioritysender/PrioritySenderListCursor;->mRows:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, p2, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public close()V
    .locals 1

    iget-object v0, p0, Lcom/android/mms/prioritysender/PrioritySenderListCursor;->mDatabaseCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    return-void
.end method

.method public copyStringToBuffer(ILandroid/database/CharArrayBuffer;)V
    .locals 1

    iget-object v0, p0, Lcom/android/mms/prioritysender/PrioritySenderListCursor;->mDatabaseCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1, p2}, Landroid/database/Cursor;->copyStringToBuffer(ILandroid/database/CharArrayBuffer;)V

    return-void
.end method

.method public deactivate()V
    .locals 1

    iget-object v0, p0, Lcom/android/mms/prioritysender/PrioritySenderListCursor;->mDatabaseCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->deactivate()V

    return-void
.end method

.method public delete(I)Z
    .locals 2

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/android/mms/prioritysender/PrioritySenderListCursor;->mEditMode:Z

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-ltz p1, :cond_0

    iget v1, p0, Lcom/android/mms/prioritysender/PrioritySenderListCursor;->mCount:I

    if-ge p1, v1, :cond_0

    iget-object v0, p0, Lcom/android/mms/prioritysender/PrioritySenderListCursor;->mRows:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/mms/prioritysender/PrioritySenderListCursor;->mRows:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iput v0, p0, Lcom/android/mms/prioritysender/PrioritySenderListCursor;->mCount:I

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getBlob(I)[B
    .locals 1

    iget-object v0, p0, Lcom/android/mms/prioritysender/PrioritySenderListCursor;->mDatabaseCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    return-object v0
.end method

.method public getColumnCount()I
    .locals 1

    iget-object v0, p0, Lcom/android/mms/prioritysender/PrioritySenderListCursor;->mDatabaseCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getColumnCount()I

    move-result v0

    return v0
.end method

.method public getColumnIndex(Ljava/lang/String;)I
    .locals 1

    iget-object v0, p0, Lcom/android/mms/prioritysender/PrioritySenderListCursor;->mDatabaseCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getColumnIndexOrThrow(Ljava/lang/String;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/mms/prioritysender/PrioritySenderListCursor;->mDatabaseCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getColumnName(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/prioritysender/PrioritySenderListCursor;->mDatabaseCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getColumnNames()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/prioritysender/PrioritySenderListCursor;->mDatabaseCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCount()I
    .locals 1

    iget v0, p0, Lcom/android/mms/prioritysender/PrioritySenderListCursor;->mCount:I

    return v0
.end method

.method public getDouble(I)D
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getExtras()Landroid/os/Bundle;
    .locals 1

    sget-object v0, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    return-object v0
.end method

.method public getFloat(I)F
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getInt(I)I
    .locals 2

    iget v0, p0, Lcom/android/mms/prioritysender/PrioritySenderListCursor;->mPos:I

    iget v1, p0, Lcom/android/mms/prioritysender/PrioritySenderListCursor;->mCursorCount:I

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/mms/prioritysender/PrioritySenderListCursor;->mDatabaseCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getLong(I)J
    .locals 2

    iget v0, p0, Lcom/android/mms/prioritysender/PrioritySenderListCursor;->mPos:I

    iget v1, p0, Lcom/android/mms/prioritysender/PrioritySenderListCursor;->mCursorCount:I

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/mms/prioritysender/PrioritySenderListCursor;->mDatabaseCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public getNotificationUri()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/prioritysender/PrioritySenderListCursor;->mDatabaseCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getNotificationUri()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public getPosition()I
    .locals 1

    iget v0, p0, Lcom/android/mms/prioritysender/PrioritySenderListCursor;->mPos:I

    return v0
.end method

.method public getShort(I)S
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getString(I)Ljava/lang/String;
    .locals 2

    iget v0, p0, Lcom/android/mms/prioritysender/PrioritySenderListCursor;->mPos:I

    iget v1, p0, Lcom/android/mms/prioritysender/PrioritySenderListCursor;->mCursorCount:I

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/mms/prioritysender/PrioritySenderListCursor;->mDatabaseCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public getType(I)I
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getWantsAllOnMoveCalls()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isAfterLast()Z
    .locals 3

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/android/mms/prioritysender/PrioritySenderListCursor;->getCount()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v1, p0, Lcom/android/mms/prioritysender/PrioritySenderListCursor;->mPos:I

    invoke-virtual {p0}, Lcom/android/mms/prioritysender/PrioritySenderListCursor;->getCount()I

    move-result v2

    if-eq v1, v2, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isBeforeFirst()Z
    .locals 3

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/android/mms/prioritysender/PrioritySenderListCursor;->getCount()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v1, p0, Lcom/android/mms/prioritysender/PrioritySenderListCursor;->mPos:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isChanged()Z
    .locals 4

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/mms/prioritysender/PrioritySenderListCursor;->mInitRows:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    iget-object v3, p0, Lcom/android/mms/prioritysender/PrioritySenderListCursor;->mRows:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-eq v2, v3, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    iget-object v2, p0, Lcom/android/mms/prioritysender/PrioritySenderListCursor;->mRows:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    iget-object v2, p0, Lcom/android/mms/prioritysender/PrioritySenderListCursor;->mInitRows:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mms/prioritysender/PrioritySenderListCursor;->mRows:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-ne v2, v3, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isClosed()Z
    .locals 1

    iget-object v0, p0, Lcom/android/mms/prioritysender/PrioritySenderListCursor;->mDatabaseCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    return v0
.end method

.method public isDummy()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/mms/prioritysender/PrioritySenderListCursor;->mDummyExist:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/mms/prioritysender/PrioritySenderListCursor;->isLast()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFirst()Z
    .locals 1

    iget v0, p0, Lcom/android/mms/prioritysender/PrioritySenderListCursor;->mPos:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/mms/prioritysender/PrioritySenderListCursor;->getCount()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isLast()Z
    .locals 3

    invoke-virtual {p0}, Lcom/android/mms/prioritysender/PrioritySenderListCursor;->getCount()I

    move-result v0

    iget v1, p0, Lcom/android/mms/prioritysender/PrioritySenderListCursor;->mPos:I

    add-int/lit8 v2, v0, -0x1

    if-ne v1, v2, :cond_0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isNull(I)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public move(I)Z
    .locals 1

    iget v0, p0, Lcom/android/mms/prioritysender/PrioritySenderListCursor;->mPos:I

    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Lcom/android/mms/prioritysender/PrioritySenderListCursor;->moveToPosition(I)Z

    move-result v0

    return v0
.end method

.method public moveToFirst()Z
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/mms/prioritysender/PrioritySenderListCursor;->moveToPosition(I)Z

    move-result v0

    return v0
.end method

.method public moveToLast()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/mms/prioritysender/PrioritySenderListCursor;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/mms/prioritysender/PrioritySenderListCursor;->moveToPosition(I)Z

    move-result v0

    return v0
.end method

.method public moveToNext()Z
    .locals 1

    iget v0, p0, Lcom/android/mms/prioritysender/PrioritySenderListCursor;->mPos:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/mms/prioritysender/PrioritySenderListCursor;->moveToPosition(I)Z

    move-result v0

    return v0
.end method

.method public moveToPosition(I)Z
    .locals 2

    iput p1, p0, Lcom/android/mms/prioritysender/PrioritySenderListCursor;->mPos:I

    iget-boolean v0, p0, Lcom/android/mms/prioritysender/PrioritySenderListCursor;->mEditMode:Z

    if-eqz v0, :cond_1

    if-ltz p1, :cond_0

    iget v0, p0, Lcom/android/mms/prioritysender/PrioritySenderListCursor;->mCount:I

    if-ge p1, v0, :cond_0

    iget-object v1, p0, Lcom/android/mms/prioritysender/PrioritySenderListCursor;->mDatabaseCursor:Landroid/database/Cursor;

    iget-object v0, p0, Lcom/android/mms/prioritysender/PrioritySenderListCursor;->mRows:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/android/mms/prioritysender/PrioritySenderListCursor;->mCursorCount:I

    if-ge p1, v0, :cond_2

    iget-object v0, p0, Lcom/android/mms/prioritysender/PrioritySenderListCursor;->mDatabaseCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public moveToPrevious()Z
    .locals 1

    iget v0, p0, Lcom/android/mms/prioritysender/PrioritySenderListCursor;->mPos:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/mms/prioritysender/PrioritySenderListCursor;->moveToPosition(I)Z

    move-result v0

    return v0
.end method

.method public registerContentObserver(Landroid/database/ContentObserver;)V
    .locals 1

    iget-object v0, p0, Lcom/android/mms/prioritysender/PrioritySenderListCursor;->mDatabaseCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->registerContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method public registerDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1

    iget-object v0, p0, Lcom/android/mms/prioritysender/PrioritySenderListCursor;->mDatabaseCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    return-void
.end method

.method public requery()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public respond(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/prioritysender/PrioritySenderListCursor;->mDatabaseCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->respond(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public setEditMode(Z)V
    .locals 2

    iput-boolean p1, p0, Lcom/android/mms/prioritysender/PrioritySenderListCursor;->mEditMode:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/prioritysender/PrioritySenderListCursor;->mDummyExist:Z

    iget-boolean v0, p0, Lcom/android/mms/prioritysender/PrioritySenderListCursor;->mEditMode:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/prioritysender/PrioritySenderListCursor;->mRows:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/android/mms/prioritysender/PrioritySenderListCursor;->mInitRows:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :try_start_0
    invoke-direct {p0}, Lcom/android/mms/prioritysender/PrioritySenderListCursor;->computeRows()V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v0, p0, Lcom/android/mms/prioritysender/PrioritySenderListCursor;->mRows:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iput v0, p0, Lcom/android/mms/prioritysender/PrioritySenderListCursor;->mCount:I

    :cond_0
    :goto_1
    return-void

    :cond_1
    iget v0, p0, Lcom/android/mms/prioritysender/PrioritySenderListCursor;->mCursorCount:I

    iput v0, p0, Lcom/android/mms/prioritysender/PrioritySenderListCursor;->mCount:I

    iget v0, p0, Lcom/android/mms/prioritysender/PrioritySenderListCursor;->mCursorCount:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/android/mms/prioritysender/PrioritySenderListCursor;->mCursorCount:I

    const/16 v1, 0x19

    if-ge v0, v1, :cond_0

    iget v0, p0, Lcom/android/mms/prioritysender/PrioritySenderListCursor;->mCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/mms/prioritysender/PrioritySenderListCursor;->mCount:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mms/prioritysender/PrioritySenderListCursor;->mDummyExist:Z

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V
    .locals 1

    iget-object v0, p0, Lcom/android/mms/prioritysender/PrioritySenderListCursor;->mDatabaseCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1, p2}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    return-void
.end method

.method public unregisterContentObserver(Landroid/database/ContentObserver;)V
    .locals 1

    iget-object v0, p0, Lcom/android/mms/prioritysender/PrioritySenderListCursor;->mDatabaseCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method public unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1

    iget-object v0, p0, Lcom/android/mms/prioritysender/PrioritySenderListCursor;->mDatabaseCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    return-void
.end method
