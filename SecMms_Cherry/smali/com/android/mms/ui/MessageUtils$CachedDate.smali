.class Lcom/android/mms/ui/MessageUtils$CachedDate;
.super Ljava/lang/Object;
.source "MessageUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/MessageUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CachedDate"
.end annotation


# static fields
.field private static mLocale:Ljava/util/Locale;

.field private static s24HR:Z

.field private static sDateTime:Ljava/lang/String;

.field private static sFormatFlags:I

.field private static sOrder:[C

.field private static sWhen:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide/16 v0, -0x1

    sput-wide v0, Lcom/android/mms/ui/MessageUtils$CachedDate;->sWhen:J

    const/4 v0, -0x1

    sput v0, Lcom/android/mms/ui/MessageUtils$CachedDate;->sFormatFlags:I

    const/4 v0, 0x3

    new-array v0, v0, [C

    sput-object v0, Lcom/android/mms/ui/MessageUtils$CachedDate;->sOrder:[C

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static equals(JI[C)Z
    .locals 5

    const/4 v2, 0x1

    const/4 v1, 0x0

    sget-wide v3, Lcom/android/mms/ui/MessageUtils$CachedDate;->sWhen:J

    cmp-long v3, p0, v3

    if-eqz v3, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    if-nez p3, :cond_2

    sget-object v3, Lcom/android/mms/ui/MessageUtils$CachedDate;->sOrder:[C

    if-nez v3, :cond_0

    move v1, v2

    goto :goto_0

    :cond_2
    sget v3, Lcom/android/mms/ui/MessageUtils$CachedDate;->sFormatFlags:I

    if-ne p2, v3, :cond_0

    const/4 v0, 0x0

    :goto_1
    array-length v3, p3

    if-ge v0, v3, :cond_3

    aget-char v3, p3, v0

    sget-object v4, Lcom/android/mms/ui/MessageUtils$CachedDate;->sOrder:[C

    aget-char v4, v4, v0

    if-ne v3, v4, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    sget-boolean v3, Lcom/android/mms/ui/MessageUtils$CachedDate;->s24HR:Z

    invoke-static {}, Lcom/android/mms/MmsApp;->getApplication()Lcom/android/mms/MmsApp;

    move-result-object v4

    invoke-static {v4}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v4

    if-ne v3, v4, :cond_0

    sget-object v3, Lcom/android/mms/ui/MessageUtils$CachedDate;->mLocale:Ljava/util/Locale;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v1, v2

    goto :goto_0
.end method

.method public static getDateTime()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/mms/ui/MessageUtils$CachedDate;->sDateTime:Ljava/lang/String;

    return-object v0
.end method

.method public static update(JI[CLjava/lang/String;)V
    .locals 1

    sput-wide p0, Lcom/android/mms/ui/MessageUtils$CachedDate;->sWhen:J

    sput p2, Lcom/android/mms/ui/MessageUtils$CachedDate;->sFormatFlags:I

    sput-object p3, Lcom/android/mms/ui/MessageUtils$CachedDate;->sOrder:[C

    sput-object p4, Lcom/android/mms/ui/MessageUtils$CachedDate;->sDateTime:Ljava/lang/String;

    invoke-static {}, Lcom/android/mms/MmsApp;->getApplication()Lcom/android/mms/MmsApp;

    move-result-object v0

    invoke-static {v0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v0

    sput-boolean v0, Lcom/android/mms/ui/MessageUtils$CachedDate;->s24HR:Z

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    sput-object v0, Lcom/android/mms/ui/MessageUtils$CachedDate;->mLocale:Ljava/util/Locale;

    return-void
.end method
