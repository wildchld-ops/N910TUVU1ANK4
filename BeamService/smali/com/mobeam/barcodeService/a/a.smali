.class public Lcom/mobeam/barcodeService/a/a;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/lang/String;

.field private static b:Lcom/mobeam/barcodeService/a/a;


# instance fields
.field private c:Landroid/content/Context;

.field private d:Lcom/mobeam/barcodeService/a/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/mobeam/barcodeService/a/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mobeam/barcodeService/a/a;->a:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/mobeam/barcodeService/a/a;->c:Landroid/content/Context;

    iget-object v0, p0, Lcom/mobeam/barcodeService/a/a;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/mobeam/barcodeService/a/b;->a(Landroid/content/Context;)Lcom/mobeam/barcodeService/a/b;

    move-result-object v0

    iput-object v0, p0, Lcom/mobeam/barcodeService/a/a;->d:Lcom/mobeam/barcodeService/a/b;

    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lcom/mobeam/barcodeService/a/a;
    .locals 2

    const-class v1, Lcom/mobeam/barcodeService/a/a;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/mobeam/barcodeService/a/a;->b:Lcom/mobeam/barcodeService/a/a;

    if-nez v0, :cond_0

    new-instance v0, Lcom/mobeam/barcodeService/a/a;

    invoke-direct {v0, p0}, Lcom/mobeam/barcodeService/a/a;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/mobeam/barcodeService/a/a;->b:Lcom/mobeam/barcodeService/a/a;

    :cond_0
    sget-object v0, Lcom/mobeam/barcodeService/a/a;->b:Lcom/mobeam/barcodeService/a/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public final a()Ljava/util/List;
    .locals 3

    iget-object v0, p0, Lcom/mobeam/barcodeService/a/a;->d:Lcom/mobeam/barcodeService/a/b;

    invoke-virtual {v0}, Lcom/mobeam/barcodeService/a/b;->a()Landroid/database/Cursor;

    move-result-object v1

    if-nez v1, :cond_1

    const/4 v0, 0x0

    :cond_0
    return-object v0

    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Lcom/mobeam/barcodeService/a/a/b;

    invoke-direct {v2, v1}, Lcom/mobeam/barcodeService/a/a/b;-><init>(Landroid/database/Cursor;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;)Ljava/util/List;
    .locals 5

    sget-object v0, Lcom/mobeam/barcodeService/a/a;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "getApp: Retrieving records matching "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    iget-object v0, p0, Lcom/mobeam/barcodeService/a/a;->d:Lcom/mobeam/barcodeService/a/b;

    invoke-virtual {v0, p1}, Lcom/mobeam/barcodeService/a/b;->a(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    sget-object v0, Lcom/mobeam/barcodeService/a/a;->a:Ljava/lang/String;

    :goto_0
    return-object v1

    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    new-instance v2, Lcom/mobeam/barcodeService/a/a/a;

    invoke-direct {v2, v0}, Lcom/mobeam/barcodeService/a/a/a;-><init>(Landroid/database/Cursor;)V

    sget-object v3, Lcom/mobeam/barcodeService/a/a;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "getApp: found record "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/mobeam/barcodeService/a/a/a;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {v0}, Landroid/database/Cursor;->isLast()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method public final a(J)V
    .locals 1

    iget-object v0, p0, Lcom/mobeam/barcodeService/a/a;->d:Lcom/mobeam/barcodeService/a/b;

    invoke-virtual {v0, p1, p2}, Lcom/mobeam/barcodeService/a/b;->a(J)I

    return-void
.end method

.method public final a(Lcom/mobeam/barcodeService/a/a/a;)V
    .locals 4

    iget-object v0, p0, Lcom/mobeam/barcodeService/a/a;->d:Lcom/mobeam/barcodeService/a/b;

    iget-object v1, p1, Lcom/mobeam/barcodeService/a/a/a;->a:Ljava/lang/String;

    iget-object v2, p1, Lcom/mobeam/barcodeService/a/a/a;->b:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/mobeam/barcodeService/a/a/a;->a()Landroid/content/ContentValues;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/mobeam/barcodeService/a/b;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)V

    return-void
.end method

.method public final a(Lcom/mobeam/barcodeService/a/a/b;)V
    .locals 5

    sget-object v0, Lcom/mobeam/barcodeService/a/a;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "addBeamRecord: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    iget-object v0, p0, Lcom/mobeam/barcodeService/a/a;->d:Lcom/mobeam/barcodeService/a/b;

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "app_package"

    iget-object v3, p1, Lcom/mobeam/barcodeService/a/a/b;->f:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "app_id"

    iget-object v3, p1, Lcom/mobeam/barcodeService/a/a/b;->g:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "barcode_type"

    iget-object v3, p1, Lcom/mobeam/barcodeService/a/a/b;->e:Lcom/mobeam/barcodeService/service/MetaData;

    iget-object v3, v3, Lcom/mobeam/barcodeService/service/MetaData;->c:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "campaign_id"

    iget-object v3, p1, Lcom/mobeam/barcodeService/a/a/b;->e:Lcom/mobeam/barcodeService/service/MetaData;

    iget-object v3, v3, Lcom/mobeam/barcodeService/service/MetaData;->a:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "product"

    iget-object v3, p1, Lcom/mobeam/barcodeService/a/a/b;->e:Lcom/mobeam/barcodeService/service/MetaData;

    iget-object v3, v3, Lcom/mobeam/barcodeService/service/MetaData;->b:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "beaming_pattern"

    iget-object v3, p1, Lcom/mobeam/barcodeService/a/a/b;->a:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "beaming_duration"

    iget v3, p1, Lcom/mobeam/barcodeService/a/a/b;->b:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v2, "beaming_timestamp"

    iget-wide v3, p1, Lcom/mobeam/barcodeService/a/a/b;->c:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v2, "actual_beaming_duration"

    iget v3, p1, Lcom/mobeam/barcodeService/a/a/b;->j:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v2, p1, Lcom/mobeam/barcodeService/a/a/b;->d:Ljava/lang/String;

    if-eqz v2, :cond_0

    const-string v2, "beaming_location"

    iget-object v3, p1, Lcom/mobeam/barcodeService/a/a/b;->d:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-string v2, "beaming_status"

    iget-object v3, p1, Lcom/mobeam/barcodeService/a/a/b;->i:Lcom/mobeam/barcodeService/a/a/c;

    invoke-virtual {v3}, Lcom/mobeam/barcodeService/a/a/c;->a()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v2, "beaming_success_factor"

    iget v3, p1, Lcom/mobeam/barcodeService/a/a/b;->h:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {v0, v1}, Lcom/mobeam/barcodeService/a/b;->a(Landroid/content/ContentValues;)J

    return-void
.end method

.method public final a(Ljava/lang/String;Lcom/mobeam/mbss/service/PushMessage$Action;)V
    .locals 4

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    sget-object v1, Lcom/mobeam/mbss/service/PushMessage$Action;->INVALIDATE_LICENSE:Lcom/mobeam/mbss/service/PushMessage$Action;

    if-ne p2, v1, :cond_0

    const-string v1, "license_status"

    sget-object v2, Lcom/mobeam/barcodeService/a/a/d;->c:Lcom/mobeam/barcodeService/a/a/d;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :goto_0
    iget-object v1, p0, Lcom/mobeam/barcodeService/a/a;->d:Lcom/mobeam/barcodeService/a/b;

    invoke-virtual {v1, p1, v0}, Lcom/mobeam/barcodeService/a/b;->a(Ljava/lang/String;Landroid/content/ContentValues;)V

    return-void

    :cond_0
    const-string v1, "license_expiry"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_0
.end method
