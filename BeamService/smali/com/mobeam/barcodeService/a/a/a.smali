.class public final Lcom/mobeam/barcodeService/a/a/a;
.super Ljava/lang/Object;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public c:J

.field public d:J

.field public e:Lcom/mobeam/barcodeService/a/a/d;

.field public f:Lcom/mobeam/mbss/service/AppAuth;

.field public g:Lcom/mobeam/mbss/service/AppInfo;


# direct methods
.method public constructor <init>(Landroid/database/Cursor;)V
    .locals 5

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v1, "app_package"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mobeam/barcodeService/a/a/a;->a:Ljava/lang/String;

    const-string v1, "app_userid"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mobeam/barcodeService/a/a/a;->b:Ljava/lang/String;

    const-string v1, "license_expiry"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/mobeam/barcodeService/a/a/a;->c:J

    const-string v1, "license_status"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v1}, Lcom/mobeam/barcodeService/a/a/d;->a(I)Lcom/mobeam/barcodeService/a/a/d;

    move-result-object v1

    iput-object v1, p0, Lcom/mobeam/barcodeService/a/a/a;->e:Lcom/mobeam/barcodeService/a/a/d;

    const-string v1, "grace_expiry"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/mobeam/barcodeService/a/a/a;->d:J

    const-string v1, "app_auth"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v2

    :try_start_0
    new-instance v1, Ljava/io/ObjectInputStream;

    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-direct {v3, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v1, v3}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mobeam/mbss/service/AppAuth;

    iput-object v0, p0, Lcom/mobeam/barcodeService/a/a/a;->f:Lcom/mobeam/mbss/service/AppAuth;

    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mobeam/mbss/service/AppInfo;

    iput-object v0, p0, Lcom/mobeam/barcodeService/a/a/a;->g:Lcom/mobeam/mbss/service/AppInfo;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v1

    :goto_1
    const/4 v1, 0x0

    :try_start_3
    iput-object v1, p0, Lcom/mobeam/barcodeService/a/a/a;->f:Lcom/mobeam/mbss/service/AppAuth;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-eqz v0, :cond_0

    :try_start_4
    invoke-virtual {v0}, Ljava/io/ObjectInputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0

    :catchall_0
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    :goto_2
    if-eqz v1, :cond_1

    :try_start_5
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    :cond_1
    :goto_3
    throw v0

    :catch_2
    move-exception v1

    goto :goto_3

    :catch_3
    move-exception v0

    goto :goto_0

    :catchall_1
    move-exception v0

    goto :goto_2

    :catchall_2
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    goto :goto_2

    :catch_4
    move-exception v0

    move-object v0, v1

    goto :goto_1
.end method

.method public constructor <init>(Lcom/mobeam/mbss/service/AppAuth;Lcom/mobeam/mbss/service/AppInfo;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/mobeam/barcodeService/a/a/a;->f:Lcom/mobeam/mbss/service/AppAuth;

    iput-object p2, p0, Lcom/mobeam/barcodeService/a/a/a;->g:Lcom/mobeam/mbss/service/AppInfo;

    iget-wide v0, p2, Lcom/mobeam/mbss/service/AppInfo;->expires:J

    iput-wide v0, p0, Lcom/mobeam/barcodeService/a/a/a;->c:J

    iget-object v0, p2, Lcom/mobeam/mbss/service/AppInfo;->status:Lcom/mobeam/mbss/service/AppStatus;

    invoke-static {v0}, Lcom/mobeam/barcodeService/a/a/d;->a(Lcom/mobeam/mbss/service/AppStatus;)Lcom/mobeam/barcodeService/a/a/d;

    move-result-object v0

    iput-object v0, p0, Lcom/mobeam/barcodeService/a/a/a;->e:Lcom/mobeam/barcodeService/a/a/d;

    iget-object v0, p1, Lcom/mobeam/mbss/service/AppAuth;->appPackage:Lcom/mobeam/mbss/service/Package;

    iget-object v0, v0, Lcom/mobeam/mbss/service/Package;->name:Ljava/lang/String;

    iput-object v0, p0, Lcom/mobeam/barcodeService/a/a/a;->a:Ljava/lang/String;

    iget-object v0, p1, Lcom/mobeam/mbss/service/AppAuth;->userID:Ljava/lang/String;

    iput-object v0, p0, Lcom/mobeam/barcodeService/a/a/a;->b:Ljava/lang/String;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/mobeam/barcodeService/a/a/a;->d:J

    return-void
.end method


# virtual methods
.method public final a()Landroid/content/ContentValues;
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v2, Ljava/io/ObjectOutputStream;

    invoke-direct {v2, v1}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    iget-object v3, p0, Lcom/mobeam/barcodeService/a/a/a;->f:Lcom/mobeam/mbss/service/AppAuth;

    invoke-virtual {v2, v3}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    iget-object v3, p0, Lcom/mobeam/barcodeService/a/a/a;->g:Lcom/mobeam/mbss/service/AppInfo;

    invoke-virtual {v2, v3}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    invoke-virtual {v2}, Ljava/io/ObjectOutputStream;->flush()V

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-virtual {v2}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "app_package"

    iget-object v3, p0, Lcom/mobeam/barcodeService/a/a/a;->a:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "app_userid"

    iget-object v3, p0, Lcom/mobeam/barcodeService/a/a/a;->b:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "license_expiry"

    iget-wide v3, p0, Lcom/mobeam/barcodeService/a/a/a;->c:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v2, "license_status"

    iget-object v3, p0, Lcom/mobeam/barcodeService/a/a/a;->e:Lcom/mobeam/barcodeService/a/a/d;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v2, "grace_expiry"

    iget-wide v3, p0, Lcom/mobeam/barcodeService/a/a/a;->d:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    if-eqz v0, :cond_0

    const-string v2, "app_auth"

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    :cond_0
    return-object v1

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public final b()Z
    .locals 4

    iget-object v0, p0, Lcom/mobeam/barcodeService/a/a/a;->e:Lcom/mobeam/barcodeService/a/a/d;

    sget-object v1, Lcom/mobeam/barcodeService/a/a/d;->b:Lcom/mobeam/barcodeService/a/a/d;

    if-ne v0, v1, :cond_0

    iget-wide v0, p0, Lcom/mobeam/barcodeService/a/a/a;->c:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AppRecord [package="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/mobeam/barcodeService/a/a/a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", user id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mobeam/barcodeService/a/a/a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", license status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mobeam/barcodeService/a/a/a;->e:Lcom/mobeam/barcodeService/a/a/d;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", expiry date="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/mobeam/barcodeService/a/a/a;->c:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", grace period expiry date="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/mobeam/barcodeService/a/a/a;->d:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", app auth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mobeam/barcodeService/a/a/a;->f:Lcom/mobeam/mbss/service/AppAuth;

    invoke-virtual {v1}, Lcom/mobeam/mbss/service/AppAuth;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", app info="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mobeam/barcodeService/a/a/a;->g:Lcom/mobeam/mbss/service/AppInfo;

    invoke-virtual {v1}, Lcom/mobeam/mbss/service/AppInfo;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
