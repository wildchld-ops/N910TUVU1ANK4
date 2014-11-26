.class public Lcom/android/services/telephony/common/CarrierMatchUtils;
.super Ljava/lang/Object;
.source "CarrierMatchUtils.java"


# static fields
.field private static final mccMncToCarrierCode:Landroid/util/SparseIntArray;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/android/services/telephony/common/CarrierMatchUtils;->createMccMncToCarrierCode()Landroid/util/SparseIntArray;

    move-result-object v0

    sput-object v0, Lcom/android/services/telephony/common/CarrierMatchUtils;->mccMncToCarrierCode:Landroid/util/SparseIntArray;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static createMccMncToCarrierCode()Landroid/util/SparseIntArray;
    .locals 6

    const/16 v5, 0x29

    const/16 v4, 0x1f

    const/16 v3, 0xc

    const/16 v2, 0xf

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    const v1, 0x11ad2

    invoke-virtual {v0, v1, v5}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x11ad3

    invoke-virtual {v0, v1, v5}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x11ad4

    invoke-virtual {v0, v1, v5}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x11ad6

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x11ada

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x11adb

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x11ae7

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x11ae0

    invoke-virtual {v0, v1, v4}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x11ae8

    invoke-virtual {v0, v1, v4}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x11aef

    invoke-virtual {v0, v1, v4}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x11ad5

    const/16 v2, 0x15

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x11af0

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x11af1

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x11af2

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    return-object v0
.end method

.method public static queryCarrierCodeFromDb(Landroid/content/Context;Ljava/lang/String;)I
    .locals 11
    .param p0    # Landroid/content/Context;
    .param p1    # Ljava/lang/String;

    const/4 v3, 0x1

    const/4 v1, 0x0

    const/4 v7, -0x1

    if-eqz p1, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move v8, v7

    :goto_0
    return v8

    :cond_1
    new-array v2, v3, [Ljava/lang/String;

    const-string v0, "data14"

    aput-object v0, v2, v1

    const-string v6, "mimetype = ? AND data1 = ?"

    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/String;

    const-string v0, "vnd.android.cursor.item/phone_v2"

    aput-object v0, v4, v1

    aput-object p1, v4, v3

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "mimetype = ? AND data1 = ?"

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    if-eqz v10, :cond_4

    const-string v0, "data14"

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    :cond_2
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v10, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    if-lez v7, :cond_2

    :cond_3
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_4
    move v8, v7

    goto :goto_0
.end method
