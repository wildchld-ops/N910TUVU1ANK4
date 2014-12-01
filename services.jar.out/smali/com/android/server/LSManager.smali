.class public Lcom/android/server/LSManager;
.super Landroid/os/storage/sensitive/SDServiceAPI$Stub;
.source "LSManager.java"


# static fields
.field private static final FAKE_PASSWORD_STRING:Ljava/lang/String; = "*_SSFPS*_"

.field private static final FLAG_SIZE:I = 0x4

.field private static final ID_LENGTH:I = 0x24

.field private static final KEYPAIR_PATH_NAME:Ljava/lang/String; = "lsm.data"

.field private static final KEY_STORE_DIR:Ljava/lang/String; = "/efs/"

.field private static final PSPACER_LEN:I = 0x40

.field private static final SET_STATE_LOCKED:I = 0x1

.field private static final SET_STATE_NOT_LOCKED:I

.field protected static final hexArray:[C

.field private static volatile isReady:Z

.field private static secureStorageLSM:Landroid/os/storage/sensitive/SecureStorageLSM;

.field private static final tmpPassword:[B


# instance fields
.field private TAG:Ljava/lang/String;

.field private USER_PASSWORD:[B

.field private askeypair:[B

.field private dropPassword:Z

.field private isLocked:Z

.field private isStarted:Z

.field private kpfile:Ljava/io/File;

.field private mContext:Landroid/content/Context;

.field private mProvider:Landroid/os/storage/sensitive/SensitiveDataProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/LSManager;->isReady:Z

    const/16 v0, 0x40

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/server/LSManager;->tmpPassword:[B

    const-string v0, "0123456789ABCDEF"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/android/server/LSManager;->hexArray:[C

    return-void

    nop

    :array_0
    .array-data 1
        -0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x3dt
        -0x58t
        -0x77t
        -0x6dt
        0x5at
        -0x4ft
        -0x5at
        -0x54t
        -0x19t
        0x58t
        0x21t
        0x2ft
        -0xdt
        0x6bt
        0x27t
        0x76t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        -0x79t
        -0x59t
        0x4ft
        -0x12t
        -0x6et
        -0x49t
        -0x6ft
        0x48t
        -0x47t
        -0x3et
        0x66t
        0x10t
        0xct
        -0x25t
        0x3t
        0x47t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 7

    const/4 v6, 0x1

    const/4 v4, 0x0

    invoke-direct {p0}, Landroid/os/storage/sensitive/SDServiceAPI$Stub;-><init>()V

    iput-boolean v4, p0, Lcom/android/server/LSManager;->isStarted:Z

    const-string v3, "LSManager"

    iput-object v3, p0, Lcom/android/server/LSManager;->TAG:Ljava/lang/String;

    new-array v3, v4, [B

    iput-object v3, p0, Lcom/android/server/LSManager;->USER_PASSWORD:[B

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/server/LSManager;->askeypair:[B

    iput-boolean v4, p0, Lcom/android/server/LSManager;->dropPassword:Z

    iget-object v3, p0, Lcom/android/server/LSManager;->TAG:Ljava/lang/String;

    const-string v4, "Start LSManager....."

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/server/LSManager;->TAG:Ljava/lang/String;

    const-string v4, "LSManager constructor was started..."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/android/server/LSManager;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/storage/sensitive/SecureStorageLSM;->getInstance()Landroid/os/storage/sensitive/SecureStorageLSM;

    move-result-object v3

    sput-object v3, Lcom/android/server/LSManager;->secureStorageLSM:Landroid/os/storage/sensitive/SecureStorageLSM;

    iget-object v3, p0, Lcom/android/server/LSManager;->TAG:Ljava/lang/String;

    const-string v4, "lets try to initialize SS"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v3, Lcom/android/server/LSManager;->secureStorageLSM:Landroid/os/storage/sensitive/SecureStorageLSM;

    invoke-virtual {v3}, Landroid/os/storage/sensitive/SecureStorageLSM;->initialize()I

    move-result v3

    if-ne v3, v6, :cond_2

    sput-boolean v6, Lcom/android/server/LSManager;->isReady:Z

    iget-object v3, p0, Lcom/android/server/LSManager;->TAG:Ljava/lang/String;

    const-string v4, "SS is initialized"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/server/LSManager;->TAG:Ljava/lang/String;

    const-string v4, "SS is ready!"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Landroid/os/storage/sensitive/SensitiveDataProvider;

    iget-object v4, p0, Lcom/android/server/LSManager;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/os/storage/sensitive/SensitiveDataProvider;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/server/LSManager;->mProvider:Landroid/os/storage/sensitive/SensitiveDataProvider;

    new-instance v3, Ljava/io/File;

    const-string v4, "/efs/"

    const-string v5, "lsm.data"

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/android/server/LSManager;->kpfile:Ljava/io/File;

    iget-object v3, p0, Lcom/android/server/LSManager;->kpfile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    iget-object v3, p0, Lcom/android/server/LSManager;->kpfile:Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v2}, Ljava/io/FileInputStream;->available()I

    move-result v3

    new-array v3, v3, [B

    iput-object v3, p0, Lcom/android/server/LSManager;->askeypair:[B

    iget-object v3, p0, Lcom/android/server/LSManager;->askeypair:[B

    invoke-virtual {v2, v3}, Ljava/io/InputStream;->read([B)I
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v2, :cond_0

    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/LSManager;->setLocked()V

    iput-boolean v6, p0, Lcom/android/server/LSManager;->isStarted:Z

    iget-object v3, p0, Lcom/android/server/LSManager;->TAG:Ljava/lang/String;

    const-string v4, "LSManager is constructed."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_1
    return-void

    :cond_2
    iget-object v3, p0, Lcom/android/server/LSManager;->TAG:Ljava/lang/String;

    const-string v4, "SS initialization failed"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/server/LSManager;->TAG:Ljava/lang/String;

    const-string v4, "SS is not ready at the beginning..."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catch_0
    move-exception v0

    :goto_2
    :try_start_3
    iget-object v3, p0, Lcom/android/server/LSManager;->TAG:Ljava/lang/String;

    const-string v4, "Askeypair file open error."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v1, :cond_1

    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    :catch_2
    move-exception v0

    :goto_3
    :try_start_5
    iget-object v3, p0, Lcom/android/server/LSManager;->TAG:Ljava/lang/String;

    const-string v4, "Askeypair file read error."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v1, :cond_0

    :try_start_6
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_0

    :catch_3
    move-exception v0

    :goto_4
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :catchall_0
    move-exception v3

    :goto_5
    if-eqz v1, :cond_3

    :try_start_7
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    :cond_3
    :goto_6
    throw v3

    :catch_4
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_6

    :catch_5
    move-exception v0

    goto :goto_4

    :catchall_1
    move-exception v3

    move-object v1, v2

    goto :goto_5

    :catch_6
    move-exception v0

    move-object v1, v2

    goto :goto_3

    :catch_7
    move-exception v0

    move-object v1, v2

    goto :goto_2
.end method

.method public static bs2l(Ljava/util/BitSet;)J
    .locals 5

    const-wide/16 v1, 0x0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Ljava/util/BitSet;->length()I

    move-result v3

    if-ge v0, v3, :cond_1

    invoke-virtual {p0, v0}, Ljava/util/BitSet;->get(I)Z

    move-result v3

    if-eqz v3, :cond_0

    const-wide/16 v3, 0x1

    shl-long/2addr v3, v0

    :goto_1
    add-long/2addr v1, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const-wide/16 v3, 0x0

    goto :goto_1

    :cond_1
    return-wide v1
.end method

.method private decryptData(Landroid/os/storage/sensitive/SensitiveDataParcel;)[B
    .locals 11

    const/16 v10, 0x24

    const/4 v3, 0x0

    const/4 v9, 0x0

    invoke-virtual {p1}, Landroid/os/storage/sensitive/SensitiveDataParcel;->getData()[B

    move-result-object v0

    iget-object v5, p0, Lcom/android/server/LSManager;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "data :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    array-length v7, v0

    int-to-long v7, v7

    invoke-static {v7, v8}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/lang/String;

    invoke-static {v0, v9, v10}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/lang/String;-><init>([B)V

    iget-object v5, p0, Lcom/android/server/LSManager;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "kid :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v3, v2}, Lcom/android/server/LSManager;->re_encrypt([BLjava/lang/String;)V

    iget-object v5, p0, Lcom/android/server/LSManager;->mProvider:Landroid/os/storage/sensitive/SensitiveDataProvider;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/os/storage/sensitive/SensitiveDataProvider;->open(I)V

    iget-object v5, p0, Lcom/android/server/LSManager;->mProvider:Landroid/os/storage/sensitive/SensitiveDataProvider;

    invoke-virtual {p1}, Landroid/os/storage/sensitive/SensitiveDataParcel;->getClient()Ljava/lang/String;

    move-result-object v6

    const-wide/16 v7, 0x0

    invoke-virtual {v5, v6, v2, v7, v8}, Landroid/os/storage/sensitive/SensitiveDataProvider;->read(Ljava/lang/String;Ljava/lang/String;J)[B

    move-result-object v1

    iget-object v5, p0, Lcom/android/server/LSManager;->mProvider:Landroid/os/storage/sensitive/SensitiveDataProvider;

    invoke-virtual {v5}, Landroid/os/storage/sensitive/SensitiveDataProvider;->close()V

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-object v3

    :cond_1
    array-length v5, v0

    add-int/lit8 v5, v5, -0x24

    array-length v6, v1

    add-int/2addr v5, v6

    new-array v4, v5, [B

    array-length v5, v1

    add-int/lit8 v5, v5, -0x4

    invoke-static {v1, v9, v4, v9, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v5, v1

    add-int/lit8 v5, v5, -0x4

    array-length v6, v0

    add-int/lit8 v6, v6, -0x24

    invoke-static {v0, v10, v4, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v5, v1

    add-int/lit8 v5, v5, -0x4

    array-length v6, v1

    add-int/lit8 v6, v6, -0x4

    array-length v7, v0

    add-int/2addr v6, v7

    add-int/lit8 v6, v6, -0x24

    const/4 v7, 0x4

    invoke-static {v1, v5, v4, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-boolean v5, p0, Lcom/android/server/LSManager;->isLocked:Z

    if-nez v5, :cond_0

    sget-object v5, Lcom/android/server/LSManager;->secureStorageLSM:Landroid/os/storage/sensitive/SecureStorageLSM;

    iget-object v6, p0, Lcom/android/server/LSManager;->USER_PASSWORD:[B

    invoke-virtual {v5, v4, v6}, Landroid/os/storage/sensitive/SecureStorageLSM;->decrypt([B[B)[B

    move-result-object v3

    goto :goto_0
.end method

.method private encryptData(Landroid/os/storage/sensitive/SensitiveDataParcel;)[B
    .locals 19

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v13

    invoke-virtual {v13}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    new-instance v11, Ljava/util/BitSet;

    const/16 v1, 0x20

    invoke-direct {v11, v1}, Ljava/util/BitSet;-><init>(I)V

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/LSManager;->TAG:Ljava/lang/String;

    const-string v2, "encryptData checking parcel..."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/LSManager;->TAG:Ljava/lang/String;

    const-string v2, "Parcel is null "

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v17, 0x0

    :goto_0
    return-object v17

    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/os/storage/sensitive/SensitiveDataParcel;->getData()[B

    move-result-object v1

    if-nez v1, :cond_1

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/LSManager;->TAG:Ljava/lang/String;

    const-string v2, "Parcel.getData() is null "

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v17, 0x0

    goto :goto_0

    :cond_1
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/server/LSManager;->isLocked:Z

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    invoke-virtual {v11, v1}, Ljava/util/BitSet;->set(I)V

    const/4 v14, 0x1

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/LSManager;->askeypair:[B

    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v7

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v7, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v18

    move/from16 v0, v18

    new-array v1, v0, [B

    invoke-virtual {v7, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    const/16 v1, 0xc

    new-array v1, v1, [B

    invoke-virtual {v7, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    const/16 v1, 0x10

    new-array v1, v1, [B

    invoke-virtual {v7, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v18

    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v15

    move/from16 v0, v18

    new-array v1, v0, [B

    invoke-virtual {v7, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    new-array v0, v15, [B

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v7, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    invoke-virtual {v7}, Ljava/nio/Buffer;->clear()Ljava/nio/Buffer;

    move-object/from16 v0, v16

    array-length v1, v0

    add-int/lit8 v1, v1, 0xc

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v7

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v7, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    invoke-virtual {v7, v15}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-object/from16 v0, v16

    invoke-virtual {v7, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    sget-object v1, Lcom/android/server/LSManager;->secureStorageLSM:Landroid/os/storage/sensitive/SecureStorageLSM;

    invoke-virtual/range {p1 .. p1}, Landroid/os/storage/sensitive/SensitiveDataParcel;->getData()[B

    move-result-object v2

    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    invoke-virtual {v1, v2, v3, v14}, Landroid/os/storage/sensitive/SecureStorageLSM;->encrypt([B[BI)[B

    move-result-object v10

    :goto_1
    invoke-static {v10}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v9

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v9, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    shr-int/lit8 v12, v1, 0x10

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/LSManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Header size:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v1, v12, 0x4

    new-array v6, v1, [B

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v10, v1, v6, v2, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v1, v10

    add-int/lit8 v1, v1, -0x4

    const/4 v2, 0x4

    invoke-static {v10, v1, v6, v12, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/LSManager;->mProvider:Landroid/os/storage/sensitive/SensitiveDataProvider;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/storage/sensitive/SensitiveDataProvider;->open(I)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/LSManager;->mProvider:Landroid/os/storage/sensitive/SensitiveDataProvider;

    invoke-virtual/range {p1 .. p1}, Landroid/os/storage/sensitive/SensitiveDataParcel;->getClient()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v11}, Lcom/android/server/LSManager;->bs2l(Ljava/util/BitSet;)J

    move-result-wide v4

    invoke-virtual/range {v1 .. v6}, Landroid/os/storage/sensitive/SensitiveDataProvider;->write(Ljava/lang/String;Ljava/lang/String;J[B)Z

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/LSManager;->mProvider:Landroid/os/storage/sensitive/SensitiveDataProvider;

    invoke-virtual {v1}, Landroid/os/storage/sensitive/SensitiveDataProvider;->close()V

    array-length v1, v10

    add-int/lit8 v2, v12, 0x4

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x24

    new-array v0, v1, [B

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/LSManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "writeData :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v13}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/16 v3, 0x24

    move-object/from16 v0, v17

    invoke-static {v8, v1, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 v1, 0x24

    array-length v2, v10

    add-int/lit8 v3, v12, 0x4

    sub-int/2addr v2, v3

    move-object/from16 v0, v17

    invoke-static {v10, v12, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto/16 :goto_0

    :cond_2
    sget-object v1, Lcom/android/server/LSManager;->secureStorageLSM:Landroid/os/storage/sensitive/SecureStorageLSM;

    invoke-virtual/range {p1 .. p1}, Landroid/os/storage/sensitive/SensitiveDataParcel;->getData()[B

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/LSManager;->USER_PASSWORD:[B

    invoke-virtual {v1, v2, v3, v14}, Landroid/os/storage/sensitive/SecureStorageLSM;->encrypt([B[BI)[B

    move-result-object v10

    goto/16 :goto_1
.end method

.method private genKeypair()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/LSManager;->TAG:Ljava/lang/String;

    const-string v1, "gen_keypair"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/server/LSManager;->secureStorageLSM:Landroid/os/storage/sensitive/SecureStorageLSM;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/server/LSManager;->USER_PASSWORD:[B

    invoke-virtual {v0, v1, v2}, Landroid/os/storage/sensitive/SecureStorageLSM;->gen_keypair([B[B)[B

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Lcom/android/server/LSManager;->askeypair:[B

    invoke-direct {p0}, Lcom/android/server/LSManager;->updateKeypair()V

    return-void
.end method

.method public static l2bs(J)Ljava/util/BitSet;
    .locals 6

    const-wide/16 v4, 0x0

    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    const/4 v1, 0x0

    :goto_0
    cmp-long v2, p0, v4

    if-eqz v2, :cond_1

    const-wide/16 v2, 0x2

    rem-long v2, p0, v2

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    const/4 v2, 0x1

    ushr-long/2addr p0, v2

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private re_encrypt([BLjava/lang/String;)V
    .locals 12

    const/4 v9, 0x1

    const/16 v11, 0x40

    const/4 v10, 0x0

    new-instance v1, Ljava/util/BitSet;

    const/16 v7, 0x20

    invoke-direct {v1, v7}, Ljava/util/BitSet;-><init>(I)V

    iget-object v7, p0, Lcom/android/server/LSManager;->TAG:Ljava/lang/String;

    const-string v8, "Reencrypt start"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    invoke-virtual {v1, v10}, Ljava/util/BitSet;->set(I)V

    :cond_0
    const/4 v2, 0x0

    if-nez p2, :cond_2

    iget-object v7, p0, Lcom/android/server/LSManager;->mProvider:Landroid/os/storage/sensitive/SensitiveDataProvider;

    invoke-virtual {v7, v9}, Landroid/os/storage/sensitive/SensitiveDataProvider;->open(I)V

    iget-object v7, p0, Lcom/android/server/LSManager;->mProvider:Landroid/os/storage/sensitive/SensitiveDataProvider;

    invoke-static {v1}, Lcom/android/server/LSManager;->bs2l(Ljava/util/BitSet;)J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Landroid/os/storage/sensitive/SensitiveDataProvider;->get_keys_by_flag(J)[B

    move-result-object v2

    iget-object v7, p0, Lcom/android/server/LSManager;->mProvider:Landroid/os/storage/sensitive/SensitiveDataProvider;

    invoke-virtual {v7}, Landroid/os/storage/sensitive/SensitiveDataProvider;->close()V

    :goto_0
    array-length v7, v2

    if-nez v7, :cond_4

    if-nez p1, :cond_3

    iget-object v7, p0, Lcom/android/server/LSManager;->TAG:Ljava/lang/String;

    const-string v8, "Have nothing to re_encrypt."

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_1
    return-void

    :cond_2
    iget-object v7, p0, Lcom/android/server/LSManager;->mProvider:Landroid/os/storage/sensitive/SensitiveDataProvider;

    invoke-virtual {v7, v9}, Landroid/os/storage/sensitive/SensitiveDataProvider;->open(I)V

    iget-object v7, p0, Lcom/android/server/LSManager;->mProvider:Landroid/os/storage/sensitive/SensitiveDataProvider;

    invoke-static {v1}, Lcom/android/server/LSManager;->bs2l(Ljava/util/BitSet;)J

    move-result-wide v8

    invoke-virtual {v7, v8, v9, p2}, Landroid/os/storage/sensitive/SensitiveDataProvider;->get_keys_by_flag_and_uuid(JLjava/lang/String;)[B

    move-result-object v2

    iget-object v7, p0, Lcom/android/server/LSManager;->mProvider:Landroid/os/storage/sensitive/SensitiveDataProvider;

    invoke-virtual {v7}, Landroid/os/storage/sensitive/SensitiveDataProvider;->close()V

    goto :goto_0

    :cond_3
    iget-object v7, p0, Lcom/android/server/LSManager;->TAG:Ljava/lang/String;

    const-string v8, "Re_encrypt asympair."

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    iget-object v7, p0, Lcom/android/server/LSManager;->askeypair:[B

    array-length v7, v7

    add-int/lit8 v7, v7, 0x40

    array-length v8, v2

    add-int/2addr v7, v8

    add-int/lit16 v7, v7, 0x190

    invoke-static {v7}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v7, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v7}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    if-nez p1, :cond_5

    new-array v7, v11, [B

    invoke-virtual {v0, v7}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    :goto_2
    iget-object v7, p0, Lcom/android/server/LSManager;->askeypair:[B

    array-length v7, v7

    invoke-virtual {v0, v7}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    iget-object v7, p0, Lcom/android/server/LSManager;->askeypair:[B

    invoke-virtual {v0, v7}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    iget-object v7, p0, Lcom/android/server/LSManager;->TAG:Ljava/lang/String;

    const-string v8, "Go to TZ"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v7, Lcom/android/server/LSManager;->secureStorageLSM:Landroid/os/storage/sensitive/SecureStorageLSM;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/LSManager;->USER_PASSWORD:[B

    invoke-virtual {v7, v8, v9}, Landroid/os/storage/sensitive/SecureStorageLSM;->keys_re_encrypt([B[B)[B

    move-result-object v6

    if-eqz v6, :cond_1

    invoke-virtual {v0}, Ljava/nio/Buffer;->clear()Ljava/nio/Buffer;

    iget-object v7, p0, Lcom/android/server/LSManager;->TAG:Ljava/lang/String;

    const-string v8, "Update."

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v6}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v7, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v7}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v3

    iget-object v7, p0, Lcom/android/server/LSManager;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Keylen: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_6

    new-array v7, v3, [B

    invoke-virtual {v0, v7}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    :goto_3
    array-length v7, v2

    if-eqz v7, :cond_1

    invoke-virtual {v0}, Ljava/nio/Buffer;->remaining()I

    move-result v7

    new-array v4, v7, [B

    iget-object v7, p0, Lcom/android/server/LSManager;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Keys size : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    array-length v9, v4

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    iget-object v7, p0, Lcom/android/server/LSManager;->mProvider:Landroid/os/storage/sensitive/SensitiveDataProvider;

    const/4 v8, 0x2

    invoke-virtual {v7, v8}, Landroid/os/storage/sensitive/SensitiveDataProvider;->open(I)V

    iget-object v7, p0, Lcom/android/server/LSManager;->mProvider:Landroid/os/storage/sensitive/SensitiveDataProvider;

    invoke-virtual {v7, v4}, Landroid/os/storage/sensitive/SensitiveDataProvider;->update_keys([B)V

    iget-object v7, p0, Lcom/android/server/LSManager;->mProvider:Landroid/os/storage/sensitive/SensitiveDataProvider;

    invoke-virtual {v7}, Landroid/os/storage/sensitive/SensitiveDataProvider;->close()V

    goto/16 :goto_1

    :cond_5
    new-array v5, v11, [B

    array-length v7, p1

    invoke-static {p1, v10, v5, v10, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    new-array v7, v11, [B

    invoke-static {v7, v10, v5, v10, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto/16 :goto_2

    :cond_6
    iget-object v7, p0, Lcom/android/server/LSManager;->askeypair:[B

    invoke-virtual {v0, v7}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    goto :goto_3
.end method

.method private updateKeypair()V
    .locals 5

    iget-object v3, p0, Lcom/android/server/LSManager;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "update_keypair"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    iget-object v3, p0, Lcom/android/server/LSManager;->kpfile:Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v3, p0, Lcom/android/server/LSManager;->askeypair:[B

    invoke-virtual {v2, v3}, Ljava/io/OutputStream;->write([B)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v2, :cond_0

    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5

    :cond_0
    :goto_0
    move-object v1, v2

    :cond_1
    :goto_1
    return-void

    :catch_0
    move-exception v0

    :goto_2
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v1, :cond_1

    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    :goto_3
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    :catch_2
    move-exception v0

    :goto_4
    :try_start_5
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v1, :cond_1

    :try_start_6
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_1

    :catch_3
    move-exception v0

    goto :goto_3

    :catchall_0
    move-exception v3

    :goto_5
    if-eqz v1, :cond_2

    :try_start_7
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    :cond_2
    :goto_6
    throw v3

    :catch_4
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_6

    :catch_5
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :catchall_1
    move-exception v3

    move-object v1, v2

    goto :goto_5

    :catch_6
    move-exception v0

    move-object v1, v2

    goto :goto_4

    :catch_7
    move-exception v0

    move-object v1, v2

    goto :goto_2
.end method


# virtual methods
.method public processParcel(Landroid/os/storage/sensitive/SensitiveDataParcel;)[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    sget-boolean v2, Lcom/android/server/LSManager;->isReady:Z

    if-eqz v2, :cond_1

    if-nez p1, :cond_0

    move-object v1, v0

    :goto_0
    return-object v1

    :cond_0
    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Landroid/os/storage/sensitive/SensitiveDataParcel;->getOperation()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :goto_1
    monitor-exit p0

    :goto_2
    move-object v1, v0

    goto :goto_0

    :pswitch_0
    invoke-direct {p0, p1}, Lcom/android/server/LSManager;->encryptData(Landroid/os/storage/sensitive/SensitiveDataParcel;)[B

    move-result-object v0

    goto :goto_1

    :pswitch_1
    invoke-direct {p0, p1}, Lcom/android/server/LSManager;->decryptData(Landroid/os/storage/sensitive/SensitiveDataParcel;)[B

    move-result-object v0

    goto :goto_1

    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :cond_1
    iget-object v2, p0, Lcom/android/server/LSManager;->TAG:Ljava/lang/String;

    const-string v3, "Secure Storage not accesible. SensitiveData API disabled."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setLocked()V
    .locals 4

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/android/server/LSManager;->TAG:Ljava/lang/String;

    const-string v1, "Set Locked."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v2, p0, Lcom/android/server/LSManager;->isLocked:Z

    iget-boolean v0, p0, Lcom/android/server/LSManager;->isLocked:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/LSManager;->USER_PASSWORD:[B

    array-length v0, v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/LSManager;->TAG:Ljava/lang/String;

    const-string v1, "Wait for pass."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/server/LSManager;->askeypair:[B

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/android/server/LSManager;->genKeypair()V

    :cond_2
    sget-object v0, Lcom/android/server/LSManager;->secureStorageLSM:Landroid/os/storage/sensitive/SecureStorageLSM;

    new-array v1, v3, [B

    invoke-virtual {v0, v1, v2}, Landroid/os/storage/sensitive/SecureStorageLSM;->set_state([BI)I

    iget-object v0, p0, Lcom/android/server/LSManager;->USER_PASSWORD:[B

    array-length v0, v0

    new-array v0, v0, [B

    iget-object v1, p0, Lcom/android/server/LSManager;->USER_PASSWORD:[B

    iget-object v2, p0, Lcom/android/server/LSManager;->USER_PASSWORD:[B

    array-length v2, v2

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-array v0, v3, [B

    iput-object v0, p0, Lcom/android/server/LSManager;->USER_PASSWORD:[B

    goto :goto_0
.end method

.method public setPassword([B)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/android/server/LSManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "setPassword"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v0, Lcom/android/server/LSManager;->isReady:Z

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lcom/android/server/LSManager;->isLocked:Z

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/android/server/LSManager;->TAG:Ljava/lang/String;

    const-string v1, "Not locked."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    array-length v0, p1

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/server/LSManager;->TAG:Ljava/lang/String;

    const-string v1, "Incomming null."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/LSManager;->USER_PASSWORD:[B

    array-length v0, v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/LSManager;->USER_PASSWORD:[B

    array-length v0, v0

    new-array v0, v0, [B

    iget-object v1, p0, Lcom/android/server/LSManager;->USER_PASSWORD:[B

    iget-object v2, p0, Lcom/android/server/LSManager;->USER_PASSWORD:[B

    array-length v2, v2

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-array v0, v3, [B

    iput-object v0, p0, Lcom/android/server/LSManager;->USER_PASSWORD:[B

    iget-object v0, p0, Lcom/android/server/LSManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "re_encrypt with tmpPassword.."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/server/LSManager;->tmpPassword:[B

    invoke-direct {p0, v0, v4}, Lcom/android/server/LSManager;->re_encrypt([BLjava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/LSManager;->updateKeypair()V

    iput-boolean v5, p0, Lcom/android/server/LSManager;->dropPassword:Z

    :cond_0
    iget-object v0, p0, Lcom/android/server/LSManager;->TAG:Ljava/lang/String;

    const-string v1, "Maybe deleted."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/server/LSManager;->TAG:Ljava/lang/String;

    const-string v1, "Incomming pass."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/android/server/LSManager;->dropPassword:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/server/LSManager;->USER_PASSWORD:[B

    array-length v0, v0

    if-lez v0, :cond_3

    iget-object v0, p0, Lcom/android/server/LSManager;->USER_PASSWORD:[B

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/server/LSManager;->TAG:Ljava/lang/String;

    const-string v1, "Going to re_encrypt with pass"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1, v4}, Lcom/android/server/LSManager;->re_encrypt([BLjava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/LSManager;->updateKeypair()V

    :cond_3
    :goto_1
    iput-boolean v3, p0, Lcom/android/server/LSManager;->isLocked:Z

    sget-object v0, Lcom/android/server/LSManager;->secureStorageLSM:Landroid/os/storage/sensitive/SecureStorageLSM;

    invoke-virtual {v0, p1, v3}, Landroid/os/storage/sensitive/SecureStorageLSM;->set_state([BI)I

    const-string v0, "*_SSFPS*_"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/LSManager;->USER_PASSWORD:[B

    iget-object v0, p0, Lcom/android/server/LSManager;->askeypair:[B

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/android/server/LSManager;->genKeypair()V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/android/server/LSManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "set_state tmpPassword..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/server/LSManager;->secureStorageLSM:Landroid/os/storage/sensitive/SecureStorageLSM;

    sget-object v1, Lcom/android/server/LSManager;->tmpPassword:[B

    invoke-virtual {v0, v1, v3}, Landroid/os/storage/sensitive/SecureStorageLSM;->set_state([BI)I

    iget-object v0, p0, Lcom/android/server/LSManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "re_encrypt with pass"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1, v4}, Lcom/android/server/LSManager;->re_encrypt([BLjava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/LSManager;->updateKeypair()V

    iput-boolean v3, p0, Lcom/android/server/LSManager;->dropPassword:Z

    iget-object v0, p0, Lcom/android/server/LSManager;->TAG:Ljava/lang/String;

    const-string v1, "clear tmpPassword..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/server/LSManager;->secureStorageLSM:Landroid/os/storage/sensitive/SecureStorageLSM;

    new-array v1, v3, [B

    invoke-virtual {v0, v1, v5}, Landroid/os/storage/sensitive/SecureStorageLSM;->set_state([BI)I

    goto :goto_1

    :cond_5
    array-length v0, p1

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/server/LSManager;->TAG:Ljava/lang/String;

    const-string v1, "First launch?.."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_6
    iget-object v0, p0, Lcom/android/server/LSManager;->TAG:Ljava/lang/String;

    const-string v1, "SS is not ready..."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public systemReady()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/LSManager;->TAG:Ljava/lang/String;

    const-string v1, "Do something JNI related here."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
