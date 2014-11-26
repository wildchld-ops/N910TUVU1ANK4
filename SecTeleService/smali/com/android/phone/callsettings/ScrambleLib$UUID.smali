.class public Lcom/android/phone/callsettings/ScrambleLib$UUID;
.super Ljava/lang/Object;
.source "ScrambleLib.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/callsettings/ScrambleLib;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "UUID"
.end annotation


# instance fields
.field private Data1:J

.field private Data2:I

.field private Data3:I

.field private Data4:[C

.field final synthetic this$0:Lcom/android/phone/callsettings/ScrambleLib;


# direct methods
.method public constructor <init>(Lcom/android/phone/callsettings/ScrambleLib;)V
    .locals 4

    const/4 v3, 0x2

    const/4 v2, 0x0

    iput-object p1, p0, Lcom/android/phone/callsettings/ScrambleLib$UUID;->this$0:Lcom/android/phone/callsettings/ScrambleLib;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x8

    new-array v0, v0, [C

    iput-object v0, p0, Lcom/android/phone/callsettings/ScrambleLib$UUID;->Data4:[C

    const-wide/32 v0, 0x21b900ec

    iput-wide v0, p0, Lcom/android/phone/callsettings/ScrambleLib$UUID;->Data1:J

    const v0, 0xb361

    iput v0, p0, Lcom/android/phone/callsettings/ScrambleLib$UUID;->Data2:I

    const/16 v0, 0x7131

    iput v0, p0, Lcom/android/phone/callsettings/ScrambleLib$UUID;->Data3:I

    iget-object v0, p0, Lcom/android/phone/callsettings/ScrambleLib$UUID;->Data4:[C

    const/16 v1, 0x38

    aput-char v1, v0, v2

    iget-object v0, p0, Lcom/android/phone/callsettings/ScrambleLib$UUID;->Data4:[C

    const/4 v1, 0x1

    aput-char v2, v0, v1

    iget-object v0, p0, Lcom/android/phone/callsettings/ScrambleLib$UUID;->Data4:[C

    aput-char v2, v0, v3

    iget-object v0, p0, Lcom/android/phone/callsettings/ScrambleLib$UUID;->Data4:[C

    const/4 v1, 0x3

    aput-char v3, v0, v1

    iget-object v0, p0, Lcom/android/phone/callsettings/ScrambleLib$UUID;->Data4:[C

    const/4 v1, 0x4

    const/16 v2, 0x2a

    aput-char v2, v0, v1

    iget-object v0, p0, Lcom/android/phone/callsettings/ScrambleLib$UUID;->Data4:[C

    const/4 v1, 0x5

    const/16 v2, 0xc6

    aput-char v2, v0, v1

    iget-object v0, p0, Lcom/android/phone/callsettings/ScrambleLib$UUID;->Data4:[C

    const/4 v1, 0x6

    const/16 v2, 0x71

    aput-char v2, v0, v1

    iget-object v0, p0, Lcom/android/phone/callsettings/ScrambleLib$UUID;->Data4:[C

    const/4 v1, 0x7

    const/16 v2, 0x3f

    aput-char v2, v0, v1

    return-void
.end method

.method static synthetic access$200(Lcom/android/phone/callsettings/ScrambleLib$UUID;)I
    .locals 1
    .param p0    # Lcom/android/phone/callsettings/ScrambleLib$UUID;

    iget v0, p0, Lcom/android/phone/callsettings/ScrambleLib$UUID;->Data3:I

    return v0
.end method


# virtual methods
.method public UpdateUUID()V
    .locals 6

    iget-object v3, p0, Lcom/android/phone/callsettings/ScrambleLib$UUID;->this$0:Lcom/android/phone/callsettings/ScrambleLib;

    # getter for: Lcom/android/phone/callsettings/ScrambleLib;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/phone/callsettings/ScrambleLib;->access$000(Lcom/android/phone/callsettings/ScrambleLib;)Landroid/content/Context;

    move-result-object v3

    const-string v4, "phone"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0xc

    if-ge v3, v4, :cond_1

    :cond_0
    const-string v0, "000000000000000"

    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    iget-object v3, p0, Lcom/android/phone/callsettings/ScrambleLib$UUID;->this$0:Lcom/android/phone/callsettings/ScrambleLib;

    # getter for: Lcom/android/phone/callsettings/ScrambleLib;->myUUID:Lcom/android/phone/callsettings/ScrambleLib$UUID;
    invoke-static {v3}, Lcom/android/phone/callsettings/ScrambleLib;->access$100(Lcom/android/phone/callsettings/ScrambleLib;)Lcom/android/phone/callsettings/ScrambleLib$UUID;

    move-result-object v3

    const/4 v4, 0x5

    aget-byte v4, v1, v4

    and-int/lit8 v4, v4, 0xf

    shl-int/lit8 v4, v4, 0xc

    const/4 v5, 0x7

    aget-byte v5, v1, v5

    and-int/lit8 v5, v5, 0xf

    shl-int/lit8 v5, v5, 0x8

    add-int/2addr v4, v5

    const/16 v5, 0x9

    aget-byte v5, v1, v5

    and-int/lit8 v5, v5, 0xf

    shl-int/lit8 v5, v5, 0x4

    add-int/2addr v4, v5

    const/16 v5, 0xb

    aget-byte v5, v1, v5

    and-int/lit8 v5, v5, 0xf

    add-int/2addr v4, v5

    iput v4, v3, Lcom/android/phone/callsettings/ScrambleLib$UUID;->Data3:I

    :cond_2
    return-void
.end method
