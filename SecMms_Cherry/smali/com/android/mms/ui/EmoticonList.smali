.class public Lcom/android/mms/ui/EmoticonList;
.super Ljava/lang/Object;
.source "EmoticonList.java"


# static fields
.field public static final CATEGORY_1:I = 0x0

.field public static final CATEGORY_2:I = 0x1

.field public static final CATEGORY_3:I = 0x2

.field public static final CATEGORY_4:I = 0x3

.field public static final CATEGORY_5:I = 0x4

.field public static final CATEGORY_FAVORITE:I = -0x1

.field public static final CATEGORY_TOTAL_COUNT:I = 0x6

.field private static sEmojiPattern:Ljava/util/regex/Pattern;

.field private static sEmoticonList:[[Ljava/lang/String;

.field private static sEmoticonUTFList:[[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    move-object v0, v1

    check-cast v0, [[Ljava/lang/String;

    sput-object v0, Lcom/android/mms/ui/EmoticonList;->sEmoticonList:[[Ljava/lang/String;

    move-object v0, v1

    check-cast v0, [[Ljava/lang/String;

    sput-object v0, Lcom/android/mms/ui/EmoticonList;->sEmoticonUTFList:[[Ljava/lang/String;

    sput-object v1, Lcom/android/mms/ui/EmoticonList;->sEmojiPattern:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ensureEmojiPattern()V
    .locals 1

    sget-object v0, Lcom/android/mms/ui/EmoticonList;->sEmojiPattern:Ljava/util/regex/Pattern;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/mms/ui/EmoticonList;->getPattern()Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/mms/ui/EmoticonList;->sEmojiPattern:Ljava/util/regex/Pattern;

    :cond_0
    return-void
.end method

.method public static getEmojiPattern()Ljava/util/regex/Pattern;
    .locals 1

    invoke-static {}, Lcom/android/mms/ui/EmoticonList;->ensureEmojiPattern()V

    sget-object v0, Lcom/android/mms/ui/EmoticonList;->sEmojiPattern:Ljava/util/regex/Pattern;

    return-object v0
.end method

.method public static getEmoticonCategory(I)[Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/mms/ui/EmoticonList;->sEmoticonList:[[Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/mms/ui/EmoticonList;->init()V

    :cond_0
    sget-object v0, Lcom/android/mms/ui/EmoticonList;->sEmoticonList:[[Ljava/lang/String;

    aget-object v0, v0, p0

    return-object v0
.end method

.method public static getEmoticonList()[[Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/mms/ui/EmoticonList;->sEmoticonList:[[Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/mms/ui/EmoticonList;->init()V

    :cond_0
    sget-object v0, Lcom/android/mms/ui/EmoticonList;->sEmoticonList:[[Ljava/lang/String;

    return-object v0
.end method

.method public static getEmoticonUTF16List()[[Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/mms/ui/EmoticonList;->sEmoticonUTFList:[[Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/mms/ui/EmoticonList;->init()V

    :cond_0
    sget-object v0, Lcom/android/mms/ui/EmoticonList;->sEmoticonUTFList:[[Ljava/lang/String;

    return-object v0
.end method

.method public static getEmoticonUTFCategory(I)[Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/mms/ui/EmoticonList;->sEmoticonUTFList:[[Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/mms/ui/EmoticonList;->init()V

    :cond_0
    sget-object v0, Lcom/android/mms/ui/EmoticonList;->sEmoticonUTFList:[[Ljava/lang/String;

    aget-object v0, v0, p0

    return-object v0
.end method

.method private static getPattern()Ljava/util/regex/Pattern;
    .locals 10

    invoke-static {}, Lcom/android/mms/ui/EmoticonList;->getEmoticonUTF16List()[[Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    array-length v7, v0

    const/4 v8, 0x0

    aget-object v8, v0, v8

    array-length v8, v8

    mul-int/2addr v7, v8

    mul-int/lit8 v7, v7, 0x2

    invoke-direct {v1, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    const/16 v7, 0x28

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    array-length v5, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v5, :cond_1

    aget-object v7, v0, v2

    array-length v4, v7

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v4, :cond_0

    aget-object v7, v0, v2

    aget-object v7, v7, v3

    invoke-static {v7}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v7, 0x7c

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    const-string v9, ")"

    invoke-virtual {v1, v7, v8, v9}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v6

    return-object v6
.end method

.method public static hasEmojiString(Ljava/lang/CharSequence;)Z
    .locals 4

    const/4 v3, 0x0

    :try_start_0
    invoke-static {}, Lcom/android/mms/ui/EmoticonList;->getEmojiPattern()Ljava/util/regex/Pattern;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    :cond_0
    :goto_0
    return v3

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private static init()V
    .locals 11

    const/4 v10, 0x4

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v2, 0x5

    new-array v2, v2, [[Ljava/lang/String;

    const/16 v3, 0x99

    new-array v3, v3, [Ljava/lang/String;

    const-string v4, "0x263a"

    aput-object v4, v3, v6

    const-string v4, "0x1f60a"

    aput-object v4, v3, v7

    const-string v4, "0x1f600"

    aput-object v4, v3, v8

    const-string v4, "0x1f601"

    aput-object v4, v3, v9

    const-string v4, "0x1f602"

    aput-object v4, v3, v10

    const/4 v4, 0x5

    const-string v5, "0x1f603"

    aput-object v5, v3, v4

    const/4 v4, 0x6

    const-string v5, "0x1f604"

    aput-object v5, v3, v4

    const/4 v4, 0x7

    const-string v5, "0x1f605"

    aput-object v5, v3, v4

    const/16 v4, 0x8

    const-string v5, "0x1f606"

    aput-object v5, v3, v4

    const/16 v4, 0x9

    const-string v5, "0x1f607"

    aput-object v5, v3, v4

    const/16 v4, 0xa

    const-string v5, "0x1f608"

    aput-object v5, v3, v4

    const/16 v4, 0xb

    const-string v5, "0x1f609"

    aput-object v5, v3, v4

    const/16 v4, 0xc

    const-string v5, "0x1f62f"

    aput-object v5, v3, v4

    const/16 v4, 0xd

    const-string v5, "0x1f610"

    aput-object v5, v3, v4

    const/16 v4, 0xe

    const-string v5, "0x1f611"

    aput-object v5, v3, v4

    const/16 v4, 0xf

    const-string v5, "0x1f615"

    aput-object v5, v3, v4

    const/16 v4, 0x10

    const-string v5, "0x1f620"

    aput-object v5, v3, v4

    const/16 v4, 0x11

    const-string v5, "0x1f62c"

    aput-object v5, v3, v4

    const/16 v4, 0x12

    const-string v5, "0x1f621"

    aput-object v5, v3, v4

    const/16 v4, 0x13

    const-string v5, "0x1f622"

    aput-object v5, v3, v4

    const/16 v4, 0x14

    const-string v5, "0x1f634"

    aput-object v5, v3, v4

    const/16 v4, 0x15

    const-string v5, "0x1f62e"

    aput-object v5, v3, v4

    const/16 v4, 0x16

    const-string v5, "0x1f623"

    aput-object v5, v3, v4

    const/16 v4, 0x17

    const-string v5, "0x1f624"

    aput-object v5, v3, v4

    const/16 v4, 0x18

    const-string v5, "0x1f625"

    aput-object v5, v3, v4

    const/16 v4, 0x19

    const-string v5, "0x1f626"

    aput-object v5, v3, v4

    const/16 v4, 0x1a

    const-string v5, "0x1f627"

    aput-object v5, v3, v4

    const/16 v4, 0x1b

    const-string v5, "0x1f628"

    aput-object v5, v3, v4

    const/16 v4, 0x1c

    const-string v5, "0x1f629"

    aput-object v5, v3, v4

    const/16 v4, 0x1d

    const-string v5, "0x1f630"

    aput-object v5, v3, v4

    const/16 v4, 0x1e

    const-string v5, "0x1f61f"

    aput-object v5, v3, v4

    const/16 v4, 0x1f

    const-string v5, "0x1f631"

    aput-object v5, v3, v4

    const/16 v4, 0x20

    const-string v5, "0x1f632"

    aput-object v5, v3, v4

    const/16 v4, 0x21

    const-string v5, "0x1f633"

    aput-object v5, v3, v4

    const/16 v4, 0x22

    const-string v5, "0x1f635"

    aput-object v5, v3, v4

    const/16 v4, 0x23

    const-string v5, "0x1f636"

    aput-object v5, v3, v4

    const/16 v4, 0x24

    const-string v5, "0x1f637"

    aput-object v5, v3, v4

    const/16 v4, 0x25

    const-string v5, "0x1f61e"

    aput-object v5, v3, v4

    const/16 v4, 0x26

    const-string v5, "0x1f612"

    aput-object v5, v3, v4

    const/16 v4, 0x27

    const-string v5, "0x1f60d"

    aput-object v5, v3, v4

    const/16 v4, 0x28

    const-string v5, "0x1f61b"

    aput-object v5, v3, v4

    const/16 v4, 0x29

    const-string v5, "0x1f61c"

    aput-object v5, v3, v4

    const/16 v4, 0x2a

    const-string v5, "0x1f61d"

    aput-object v5, v3, v4

    const/16 v4, 0x2b

    const-string v5, "0x1f60b"

    aput-object v5, v3, v4

    const/16 v4, 0x2c

    const-string v5, "0x1f617"

    aput-object v5, v3, v4

    const/16 v4, 0x2d

    const-string v5, "0x1f619"

    aput-object v5, v3, v4

    const/16 v4, 0x2e

    const-string v5, "0x1f618"

    aput-object v5, v3, v4

    const/16 v4, 0x2f

    const-string v5, "0x1f61a"

    aput-object v5, v3, v4

    const/16 v4, 0x30

    const-string v5, "0x1f60e"

    aput-object v5, v3, v4

    const/16 v4, 0x31

    const-string v5, "0x1f62d"

    aput-object v5, v3, v4

    const/16 v4, 0x32

    const-string v5, "0x1f60c"

    aput-object v5, v3, v4

    const/16 v4, 0x33

    const-string v5, "0x1f616"

    aput-object v5, v3, v4

    const/16 v4, 0x34

    const-string v5, "0x1f614"

    aput-object v5, v3, v4

    const/16 v4, 0x35

    const-string v5, "0x1f62a"

    aput-object v5, v3, v4

    const/16 v4, 0x36

    const-string v5, "0x1f60f"

    aput-object v5, v3, v4

    const/16 v4, 0x37

    const-string v5, "0x1f613"

    aput-object v5, v3, v4

    const/16 v4, 0x38

    const-string v5, "0x1f62b"

    aput-object v5, v3, v4

    const/16 v4, 0x39

    const-string v5, "0x1f64b"

    aput-object v5, v3, v4

    const/16 v4, 0x3a

    const-string v5, "0x1f64c"

    aput-object v5, v3, v4

    const/16 v4, 0x3b

    const-string v5, "0x1f64d"

    aput-object v5, v3, v4

    const/16 v4, 0x3c

    const-string v5, "0x1f645"

    aput-object v5, v3, v4

    const/16 v4, 0x3d

    const-string v5, "0x1f646"

    aput-object v5, v3, v4

    const/16 v4, 0x3e

    const-string v5, "0x1f647"

    aput-object v5, v3, v4

    const/16 v4, 0x3f

    const-string v5, "0x1f64e"

    aput-object v5, v3, v4

    const/16 v4, 0x40

    const-string v5, "0x1f64f"

    aput-object v5, v3, v4

    const/16 v4, 0x41

    const-string v5, "0x1f63a"

    aput-object v5, v3, v4

    const/16 v4, 0x42

    const-string v5, "0x1f63c"

    aput-object v5, v3, v4

    const/16 v4, 0x43

    const-string v5, "0x1f638"

    aput-object v5, v3, v4

    const/16 v4, 0x44

    const-string v5, "0x1f639"

    aput-object v5, v3, v4

    const/16 v4, 0x45

    const-string v5, "0x1f63b"

    aput-object v5, v3, v4

    const/16 v4, 0x46

    const-string v5, "0x1f63d"

    aput-object v5, v3, v4

    const/16 v4, 0x47

    const-string v5, "0x1f63f"

    aput-object v5, v3, v4

    const/16 v4, 0x48

    const-string v5, "0x1f63e"

    aput-object v5, v3, v4

    const/16 v4, 0x49

    const-string v5, "0x1f640"

    aput-object v5, v3, v4

    const/16 v4, 0x4a

    const-string v5, "0x1f648"

    aput-object v5, v3, v4

    const/16 v4, 0x4b

    const-string v5, "0x1f649"

    aput-object v5, v3, v4

    const/16 v4, 0x4c

    const-string v5, "0x1f64a"

    aput-object v5, v3, v4

    const/16 v4, 0x4d

    const-string v5, "0x1f4a9"

    aput-object v5, v3, v4

    const/16 v4, 0x4e

    const-string v5, "0x1f476"

    aput-object v5, v3, v4

    const/16 v4, 0x4f

    const-string v5, "0x1f466"

    aput-object v5, v3, v4

    const/16 v4, 0x50

    const-string v5, "0x1f467"

    aput-object v5, v3, v4

    const/16 v4, 0x51

    const-string v5, "0x1f468"

    aput-object v5, v3, v4

    const/16 v4, 0x52

    const-string v5, "0x1f469"

    aput-object v5, v3, v4

    const/16 v4, 0x53

    const-string v5, "0x1f474"

    aput-object v5, v3, v4

    const/16 v4, 0x54

    const-string v5, "0x1f475"

    aput-object v5, v3, v4

    const/16 v4, 0x55

    const-string v5, "0x1f48f"

    aput-object v5, v3, v4

    const/16 v4, 0x56

    const-string v5, "0x1f491"

    aput-object v5, v3, v4

    const/16 v4, 0x57

    const-string v5, "0x1f46a"

    aput-object v5, v3, v4

    const/16 v4, 0x58

    const-string v5, "0x1f46b"

    aput-object v5, v3, v4

    const/16 v4, 0x59

    const-string v5, "0x1f46c"

    aput-object v5, v3, v4

    const/16 v4, 0x5a

    const-string v5, "0x1f46d"

    aput-object v5, v3, v4

    const/16 v4, 0x5b

    const-string v5, "0x1f464"

    aput-object v5, v3, v4

    const/16 v4, 0x5c

    const-string v5, "0x1f465"

    aput-object v5, v3, v4

    const/16 v4, 0x5d

    const-string v5, "0x1f46e"

    aput-object v5, v3, v4

    const/16 v4, 0x5e

    const-string v5, "0x1f477"

    aput-object v5, v3, v4

    const/16 v4, 0x5f

    const-string v5, "0x1f481"

    aput-object v5, v3, v4

    const/16 v4, 0x60

    const-string v5, "0x1f482"

    aput-object v5, v3, v4

    const/16 v4, 0x61

    const-string v5, "0x1f46f"

    aput-object v5, v3, v4

    const/16 v4, 0x62

    const-string v5, "0x1f470"

    aput-object v5, v3, v4

    const/16 v4, 0x63

    const-string v5, "0x1f478"

    aput-object v5, v3, v4

    const/16 v4, 0x64

    const-string v5, "0x1f385"

    aput-object v5, v3, v4

    const/16 v4, 0x65

    const-string v5, "0x1f47c"

    aput-object v5, v3, v4

    const/16 v4, 0x66

    const-string v5, "0x1f471"

    aput-object v5, v3, v4

    const/16 v4, 0x67

    const-string v5, "0x1f472"

    aput-object v5, v3, v4

    const/16 v4, 0x68

    const-string v5, "0x1f473"

    aput-object v5, v3, v4

    const/16 v4, 0x69

    const-string v5, "0x1f483"

    aput-object v5, v3, v4

    const/16 v4, 0x6a

    const-string v5, "0x1f486"

    aput-object v5, v3, v4

    const/16 v4, 0x6b

    const-string v5, "0x1f487"

    aput-object v5, v3, v4

    const/16 v4, 0x6c

    const-string v5, "0x1f485"

    aput-object v5, v3, v4

    const/16 v4, 0x6d

    const-string v5, "0x1f47b"

    aput-object v5, v3, v4

    const/16 v4, 0x6e

    const-string v5, "0x1f479"

    aput-object v5, v3, v4

    const/16 v4, 0x6f

    const-string v5, "0x1f47a"

    aput-object v5, v3, v4

    const/16 v4, 0x70

    const-string v5, "0x1f47d"

    aput-object v5, v3, v4

    const/16 v4, 0x71

    const-string v5, "0x1f47e"

    aput-object v5, v3, v4

    const/16 v4, 0x72

    const-string v5, "0x1f47f"

    aput-object v5, v3, v4

    const/16 v4, 0x73

    const-string v5, "0x1f480"

    aput-object v5, v3, v4

    const/16 v4, 0x74

    const-string v5, "0x1f4aa"

    aput-object v5, v3, v4

    const/16 v4, 0x75

    const-string v5, "0x1f440"

    aput-object v5, v3, v4

    const/16 v4, 0x76

    const-string v5, "0x1f442"

    aput-object v5, v3, v4

    const/16 v4, 0x77

    const-string v5, "0x1f443"

    aput-object v5, v3, v4

    const/16 v4, 0x78

    const-string v5, "0x1f463"

    aput-object v5, v3, v4

    const/16 v4, 0x79

    const-string v5, "0x1f444"

    aput-object v5, v3, v4

    const/16 v4, 0x7a

    const-string v5, "0x1f445"

    aput-object v5, v3, v4

    const/16 v4, 0x7b

    const-string v5, "0x1f48b"

    aput-object v5, v3, v4

    const/16 v4, 0x7c

    const-string v5, "0x2764"

    aput-object v5, v3, v4

    const/16 v4, 0x7d

    const-string v5, "0x1f499"

    aput-object v5, v3, v4

    const/16 v4, 0x7e

    const-string v5, "0x1f49a"

    aput-object v5, v3, v4

    const/16 v4, 0x7f

    const-string v5, "0x1f49b"

    aput-object v5, v3, v4

    const/16 v4, 0x80

    const-string v5, "0x1f49c"

    aput-object v5, v3, v4

    const/16 v4, 0x81

    const-string v5, "0x1f493"

    aput-object v5, v3, v4

    const/16 v4, 0x82

    const-string v5, "0x1f494"

    aput-object v5, v3, v4

    const/16 v4, 0x83

    const-string v5, "0x1f495"

    aput-object v5, v3, v4

    const/16 v4, 0x84

    const-string v5, "0x1f496"

    aput-object v5, v3, v4

    const/16 v4, 0x85

    const-string v5, "0x1f497"

    aput-object v5, v3, v4

    const/16 v4, 0x86

    const-string v5, "0x1f498"

    aput-object v5, v3, v4

    const/16 v4, 0x87

    const-string v5, "0x1f49d"

    aput-object v5, v3, v4

    const/16 v4, 0x88

    const-string v5, "0x1f49e"

    aput-object v5, v3, v4

    const/16 v4, 0x89

    const-string v5, "0x1f49f"

    aput-object v5, v3, v4

    const/16 v4, 0x8a

    const-string v5, "0x1f44d"

    aput-object v5, v3, v4

    const/16 v4, 0x8b

    const-string v5, "0x1f44e"

    aput-object v5, v3, v4

    const/16 v4, 0x8c

    const-string v5, "0x1f44c"

    aput-object v5, v3, v4

    const/16 v4, 0x8d

    const-string v5, "0x270a"

    aput-object v5, v3, v4

    const/16 v4, 0x8e

    const-string v5, "0x270c"

    aput-object v5, v3, v4

    const/16 v4, 0x8f

    const-string v5, "0x270b"

    aput-object v5, v3, v4

    const/16 v4, 0x90

    const-string v5, "0x1f44a"

    aput-object v5, v3, v4

    const/16 v4, 0x91

    const-string v5, "0x261d"

    aput-object v5, v3, v4

    const/16 v4, 0x92

    const-string v5, "0x1f446"

    aput-object v5, v3, v4

    const/16 v4, 0x93

    const-string v5, "0x1f447"

    aput-object v5, v3, v4

    const/16 v4, 0x94

    const-string v5, "0x1f448"

    aput-object v5, v3, v4

    const/16 v4, 0x95

    const-string v5, "0x1f449"

    aput-object v5, v3, v4

    const/16 v4, 0x96

    const-string v5, "0x1f44b"

    aput-object v5, v3, v4

    const/16 v4, 0x97

    const-string v5, "0x1f44f"

    aput-object v5, v3, v4

    const/16 v4, 0x98

    const-string v5, "0x1f450"

    aput-object v5, v3, v4

    aput-object v3, v2, v6

    const/16 v3, 0x9d

    new-array v3, v3, [Ljava/lang/String;

    const-string v4, "0x1f530"

    aput-object v4, v3, v6

    const-string v4, "0x1f484"

    aput-object v4, v3, v7

    const-string v4, "0x1f45e"

    aput-object v4, v3, v8

    const-string v4, "0x1f45f"

    aput-object v4, v3, v9

    const-string v4, "0x1f451"

    aput-object v4, v3, v10

    const/4 v4, 0x5

    const-string v5, "0x1f452"

    aput-object v5, v3, v4

    const/4 v4, 0x6

    const-string v5, "0x1f3a9"

    aput-object v5, v3, v4

    const/4 v4, 0x7

    const-string v5, "0x1f393"

    aput-object v5, v3, v4

    const/16 v4, 0x8

    const-string v5, "0x1f453"

    aput-object v5, v3, v4

    const/16 v4, 0x9

    const-string v5, "0x231a"

    aput-object v5, v3, v4

    const/16 v4, 0xa

    const-string v5, "0x1f454"

    aput-object v5, v3, v4

    const/16 v4, 0xb

    const-string v5, "0x1f455"

    aput-object v5, v3, v4

    const/16 v4, 0xc

    const-string v5, "0x1f456"

    aput-object v5, v3, v4

    const/16 v4, 0xd

    const-string v5, "0x1f457"

    aput-object v5, v3, v4

    const/16 v4, 0xe

    const-string v5, "0x1f458"

    aput-object v5, v3, v4

    const/16 v4, 0xf

    const-string v5, "0x1f459"

    aput-object v5, v3, v4

    const/16 v4, 0x10

    const-string v5, "0x1f460"

    aput-object v5, v3, v4

    const/16 v4, 0x11

    const-string v5, "0x1f461"

    aput-object v5, v3, v4

    const/16 v4, 0x12

    const-string v5, "0x1f462"

    aput-object v5, v3, v4

    const/16 v4, 0x13

    const-string v5, "0x1f45a"

    aput-object v5, v3, v4

    const/16 v4, 0x14

    const-string v5, "0x1f45c"

    aput-object v5, v3, v4

    const/16 v4, 0x15

    const-string v5, "0x1f4bc"

    aput-object v5, v3, v4

    const/16 v4, 0x16

    const-string v5, "0x1f392"

    aput-object v5, v3, v4

    const/16 v4, 0x17

    const-string v5, "0x1f45d"

    aput-object v5, v3, v4

    const/16 v4, 0x18

    const-string v5, "0x1f45b"

    aput-object v5, v3, v4

    const/16 v4, 0x19

    const-string v5, "0x1f4b0"

    aput-object v5, v3, v4

    const/16 v4, 0x1a

    const-string v5, "0x1f4b3"

    aput-object v5, v3, v4

    const/16 v4, 0x1b

    const-string v5, "0x1f4b2"

    aput-object v5, v3, v4

    const/16 v4, 0x1c

    const-string v5, "0x1f4b5"

    aput-object v5, v3, v4

    const/16 v4, 0x1d

    const-string v5, "0x1f4b4"

    aput-object v5, v3, v4

    const/16 v4, 0x1e

    const-string v5, "0x1f4b6"

    aput-object v5, v3, v4

    const/16 v4, 0x1f

    const-string v5, "0x1f4b7"

    aput-object v5, v3, v4

    const/16 v4, 0x20

    const-string v5, "0x1f4b8"

    aput-object v5, v3, v4

    const/16 v4, 0x21

    const-string v5, "0x1f4b1"

    aput-object v5, v3, v4

    const/16 v4, 0x22

    const-string v5, "0x1f52b"

    aput-object v5, v3, v4

    const/16 v4, 0x23

    const-string v5, "0x1f52a"

    aput-object v5, v3, v4

    const/16 v4, 0x24

    const-string v5, "0x1f4a3"

    aput-object v5, v3, v4

    const/16 v4, 0x25

    const-string v5, "0x1f489"

    aput-object v5, v3, v4

    const/16 v4, 0x26

    const-string v5, "0x1f48a"

    aput-object v5, v3, v4

    const/16 v4, 0x27

    const-string v5, "0x1f6ac"

    aput-object v5, v3, v4

    const/16 v4, 0x28

    const-string v5, "0x1f514"

    aput-object v5, v3, v4

    const/16 v4, 0x29

    const-string v5, "0x1f515"

    aput-object v5, v3, v4

    const/16 v4, 0x2a

    const-string v5, "0x1f6aa"

    aput-object v5, v3, v4

    const/16 v4, 0x2b

    const-string v5, "0x1f52c"

    aput-object v5, v3, v4

    const/16 v4, 0x2c

    const-string v5, "0x1f52d"

    aput-object v5, v3, v4

    const/16 v4, 0x2d

    const-string v5, "0x1f52e"

    aput-object v5, v3, v4

    const/16 v4, 0x2e

    const-string v5, "0x1f526"

    aput-object v5, v3, v4

    const/16 v4, 0x2f

    const-string v5, "0x1f50b"

    aput-object v5, v3, v4

    const/16 v4, 0x30

    const-string v5, "0x1f50c"

    aput-object v5, v3, v4

    const/16 v4, 0x31

    const-string v5, "0x1f4dc"

    aput-object v5, v3, v4

    const/16 v4, 0x32

    const-string v5, "0x1f4d7"

    aput-object v5, v3, v4

    const/16 v4, 0x33

    const-string v5, "0x1f4d8"

    aput-object v5, v3, v4

    const/16 v4, 0x34

    const-string v5, "0x1f4d9"

    aput-object v5, v3, v4

    const/16 v4, 0x35

    const-string v5, "0x1f4da"

    aput-object v5, v3, v4

    const/16 v4, 0x36

    const-string v5, "0x1f4d4"

    aput-object v5, v3, v4

    const/16 v4, 0x37

    const-string v5, "0x1f4d2"

    aput-object v5, v3, v4

    const/16 v4, 0x38

    const-string v5, "0x1f4d1"

    aput-object v5, v3, v4

    const/16 v4, 0x39

    const-string v5, "0x1f4d3"

    aput-object v5, v3, v4

    const/16 v4, 0x3a

    const-string v5, "0x1f4d5"

    aput-object v5, v3, v4

    const/16 v4, 0x3b

    const-string v5, "0x1f4d6"

    aput-object v5, v3, v4

    const/16 v4, 0x3c

    const-string v5, "0x1f4f0"

    aput-object v5, v3, v4

    const/16 v4, 0x3d

    const-string v5, "0x1f4db"

    aput-object v5, v3, v4

    const/16 v4, 0x3e

    const-string v5, "0x1f383"

    aput-object v5, v3, v4

    const/16 v4, 0x3f

    const-string v5, "0x1f384"

    aput-object v5, v3, v4

    const/16 v4, 0x40

    const-string v5, "0x1f380"

    aput-object v5, v3, v4

    const/16 v4, 0x41

    const-string v5, "0x1f381"

    aput-object v5, v3, v4

    const/16 v4, 0x42

    const-string v5, "0x1f382"

    aput-object v5, v3, v4

    const/16 v4, 0x43

    const-string v5, "0x1f388"

    aput-object v5, v3, v4

    const/16 v4, 0x44

    const-string v5, "0x1f386"

    aput-object v5, v3, v4

    const/16 v4, 0x45

    const-string v5, "0x1f387"

    aput-object v5, v3, v4

    const/16 v4, 0x46

    const-string v5, "0x1f389"

    aput-object v5, v3, v4

    const/16 v4, 0x47

    const-string v5, "0x1f38a"

    aput-object v5, v3, v4

    const/16 v4, 0x48

    const-string v5, "0x1f38d"

    aput-object v5, v3, v4

    const/16 v4, 0x49

    const-string v5, "0x1f38b"

    aput-object v5, v3, v4

    const/16 v4, 0x4a

    const-string v5, "0x1f4f1"

    aput-object v5, v3, v4

    const/16 v4, 0x4b

    const-string v5, "0x1f4f2"

    aput-object v5, v3, v4

    const/16 v4, 0x4c

    const-string v5, "0x1f4df"

    aput-object v5, v3, v4

    const/16 v4, 0x4d

    const-string v5, "0x260e"

    aput-object v5, v3, v4

    const/16 v4, 0x4e

    const-string v5, "0x1f4de"

    aput-object v5, v3, v4

    const/16 v4, 0x4f

    const-string v5, "0x1f4e0"

    aput-object v5, v3, v4

    const/16 v4, 0x50

    const-string v5, "0x1f4e6"

    aput-object v5, v3, v4

    const/16 v4, 0x51

    const-string v5, "0x2709"

    aput-object v5, v3, v4

    const/16 v4, 0x52

    const-string v5, "0x1f4e8"

    aput-object v5, v3, v4

    const/16 v4, 0x53

    const-string v5, "0x1f4e9"

    aput-object v5, v3, v4

    const/16 v4, 0x54

    const-string v5, "0x1f4ea"

    aput-object v5, v3, v4

    const/16 v4, 0x55

    const-string v5, "0x1f4eb"

    aput-object v5, v3, v4

    const/16 v4, 0x56

    const-string v5, "0x1f4ed"

    aput-object v5, v3, v4

    const/16 v4, 0x57

    const-string v5, "0x1f4ec"

    aput-object v5, v3, v4

    const/16 v4, 0x58

    const-string v5, "0x1f4ee"

    aput-object v5, v3, v4

    const/16 v4, 0x59

    const-string v5, "0x1f4e4"

    aput-object v5, v3, v4

    const/16 v4, 0x5a

    const-string v5, "0x1f4e5"

    aput-object v5, v3, v4

    const/16 v4, 0x5b

    const-string v5, "0x1f4ef"

    aput-object v5, v3, v4

    const/16 v4, 0x5c

    const-string v5, "0x1f4e2"

    aput-object v5, v3, v4

    const/16 v4, 0x5d

    const-string v5, "0x1f4e3"

    aput-object v5, v3, v4

    const/16 v4, 0x5e

    const-string v5, "0x1f4e1"

    aput-object v5, v3, v4

    const/16 v4, 0x5f

    const-string v5, "0x1f4ac"

    aput-object v5, v3, v4

    const/16 v4, 0x60

    const-string v5, "0x1f4ad"

    aput-object v5, v3, v4

    const/16 v4, 0x61

    const-string v5, "0x2712"

    aput-object v5, v3, v4

    const/16 v4, 0x62

    const-string v5, "0x270f"

    aput-object v5, v3, v4

    const/16 v4, 0x63

    const-string v5, "0x1f4dd"

    aput-object v5, v3, v4

    const/16 v4, 0x64

    const-string v5, "0x1f4cf"

    aput-object v5, v3, v4

    const/16 v4, 0x65

    const-string v5, "0x1f4d0"

    aput-object v5, v3, v4

    const/16 v4, 0x66

    const-string v5, "0x1f4cd"

    aput-object v5, v3, v4

    const/16 v4, 0x67

    const-string v5, "0x1f4cc"

    aput-object v5, v3, v4

    const/16 v4, 0x68

    const-string v5, "0x1f4ce"

    aput-object v5, v3, v4

    const/16 v4, 0x69

    const-string v5, "0x2702"

    aput-object v5, v3, v4

    const/16 v4, 0x6a

    const-string v5, "0x1f4ba"

    aput-object v5, v3, v4

    const/16 v4, 0x6b

    const-string v5, "0x1f4bb"

    aput-object v5, v3, v4

    const/16 v4, 0x6c

    const-string v5, "0x1f4bd"

    aput-object v5, v3, v4

    const/16 v4, 0x6d

    const-string v5, "0x1f4be"

    aput-object v5, v3, v4

    const/16 v4, 0x6e

    const-string v5, "0x1f4bf"

    aput-object v5, v3, v4

    const/16 v4, 0x6f

    const-string v5, "0x1f4c6"

    aput-object v5, v3, v4

    const/16 v4, 0x70

    const-string v5, "0x1f4c5"

    aput-object v5, v3, v4

    const/16 v4, 0x71

    const-string v5, "0x1f4c7"

    aput-object v5, v3, v4

    const/16 v4, 0x72

    const-string v5, "0x1f4cb"

    aput-object v5, v3, v4

    const/16 v4, 0x73

    const-string v5, "0x1f4c1"

    aput-object v5, v3, v4

    const/16 v4, 0x74

    const-string v5, "0x1f4c2"

    aput-object v5, v3, v4

    const/16 v4, 0x75

    const-string v5, "0x1f4c3"

    aput-object v5, v3, v4

    const/16 v4, 0x76

    const-string v5, "0x1f4c4"

    aput-object v5, v3, v4

    const/16 v4, 0x77

    const-string v5, "0x1f4ca"

    aput-object v5, v3, v4

    const/16 v4, 0x78

    const-string v5, "0x1f4c8"

    aput-object v5, v3, v4

    const/16 v4, 0x79

    const-string v5, "0x1f4c9"

    aput-object v5, v3, v4

    const/16 v4, 0x7a

    const-string v5, "0x26fa"

    aput-object v5, v3, v4

    const/16 v4, 0x7b

    const-string v5, "0x1f3a1"

    aput-object v5, v3, v4

    const/16 v4, 0x7c

    const-string v5, "0x1f3a2"

    aput-object v5, v3, v4

    const/16 v4, 0x7d

    const-string v5, "0x1f3a0"

    aput-object v5, v3, v4

    const/16 v4, 0x7e

    const-string v5, "0x1f3aa"

    aput-object v5, v3, v4

    const/16 v4, 0x7f

    const-string v5, "0x1f3a8"

    aput-object v5, v3, v4

    const/16 v4, 0x80

    const-string v5, "0x1f3ac"

    aput-object v5, v3, v4

    const/16 v4, 0x81

    const-string v5, "0x1f3a5"

    aput-object v5, v3, v4

    const/16 v4, 0x82

    const-string v5, "0x1f4f7"

    aput-object v5, v3, v4

    const/16 v4, 0x83

    const-string v5, "0x1f4f9"

    aput-object v5, v3, v4

    const/16 v4, 0x84

    const-string v5, "0x1f3a6"

    aput-object v5, v3, v4

    const/16 v4, 0x85

    const-string v5, "0x1f3ad"

    aput-object v5, v3, v4

    const/16 v4, 0x86

    const-string v5, "0x1f3ab"

    aput-object v5, v3, v4

    const/16 v4, 0x87

    const-string v5, "0x1f3ae"

    aput-object v5, v3, v4

    const/16 v4, 0x88

    const-string v5, "0x1f3b2"

    aput-object v5, v3, v4

    const/16 v4, 0x89

    const-string v5, "0x1f3b0"

    aput-object v5, v3, v4

    const/16 v4, 0x8a

    const-string v5, "0x1f0cf"

    aput-object v5, v3, v4

    const/16 v4, 0x8b

    const-string v5, "0x1f3b4"

    aput-object v5, v3, v4

    const/16 v4, 0x8c

    const-string v5, "0x1f004"

    aput-object v5, v3, v4

    const/16 v4, 0x8d

    const-string v5, "0x1f3af"

    aput-object v5, v3, v4

    const/16 v4, 0x8e

    const-string v5, "0x1f4fa"

    aput-object v5, v3, v4

    const/16 v4, 0x8f

    const-string v5, "0x1f4fb"

    aput-object v5, v3, v4

    const/16 v4, 0x90

    const-string v5, "0x1f4c0"

    aput-object v5, v3, v4

    const/16 v4, 0x91

    const-string v5, "0x1f4fc"

    aput-object v5, v3, v4

    const/16 v4, 0x92

    const-string v5, "0x1f3a7"

    aput-object v5, v3, v4

    const/16 v4, 0x93

    const-string v5, "0x1f3a4"

    aput-object v5, v3, v4

    const/16 v4, 0x94

    const-string v5, "0x1f3b5"

    aput-object v5, v3, v4

    const/16 v4, 0x95

    const-string v5, "0x1f3b6"

    aput-object v5, v3, v4

    const/16 v4, 0x96

    const-string v5, "0x1f3bc"

    aput-object v5, v3, v4

    const/16 v4, 0x97

    const-string v5, "0x1f3bb"

    aput-object v5, v3, v4

    const/16 v4, 0x98

    const-string v5, "0x1f3b9"

    aput-object v5, v3, v4

    const/16 v4, 0x99

    const-string v5, "0x1f3b7"

    aput-object v5, v3, v4

    const/16 v4, 0x9a

    const-string v5, "0x1f3ba"

    aput-object v5, v3, v4

    const/16 v4, 0x9b

    const-string v5, "0x1f3b8"

    aput-object v5, v3, v4

    const/16 v4, 0x9c

    const-string v5, "0x303d"

    aput-object v5, v3, v4

    aput-object v3, v2, v7

    const/16 v3, 0xb2

    new-array v3, v3, [Ljava/lang/String;

    const-string v4, "0x1f415"

    aput-object v4, v3, v6

    const-string v4, "0x1f436"

    aput-object v4, v3, v7

    const-string v4, "0x1f429"

    aput-object v4, v3, v8

    const-string v4, "0x1f408"

    aput-object v4, v3, v9

    const-string v4, "0x1f431"

    aput-object v4, v3, v10

    const/4 v4, 0x5

    const-string v5, "0x1f400"

    aput-object v5, v3, v4

    const/4 v4, 0x6

    const-string v5, "0x1f401"

    aput-object v5, v3, v4

    const/4 v4, 0x7

    const-string v5, "0x1f42d"

    aput-object v5, v3, v4

    const/16 v4, 0x8

    const-string v5, "0x1f439"

    aput-object v5, v3, v4

    const/16 v4, 0x9

    const-string v5, "0x1f422"

    aput-object v5, v3, v4

    const/16 v4, 0xa

    const-string v5, "0x1f407"

    aput-object v5, v3, v4

    const/16 v4, 0xb

    const-string v5, "0x1f430"

    aput-object v5, v3, v4

    const/16 v4, 0xc

    const-string v5, "0x1f413"

    aput-object v5, v3, v4

    const/16 v4, 0xd

    const-string v5, "0x1f414"

    aput-object v5, v3, v4

    const/16 v4, 0xe

    const-string v5, "0x1f423"

    aput-object v5, v3, v4

    const/16 v4, 0xf

    const-string v5, "0x1f424"

    aput-object v5, v3, v4

    const/16 v4, 0x10

    const-string v5, "0x1f425"

    aput-object v5, v3, v4

    const/16 v4, 0x11

    const-string v5, "0x1f426"

    aput-object v5, v3, v4

    const/16 v4, 0x12

    const-string v5, "0x1f40f"

    aput-object v5, v3, v4

    const/16 v4, 0x13

    const-string v5, "0x1f411"

    aput-object v5, v3, v4

    const/16 v4, 0x14

    const-string v5, "0x1f410"

    aput-object v5, v3, v4

    const/16 v4, 0x15

    const-string v5, "0x1f43a"

    aput-object v5, v3, v4

    const/16 v4, 0x16

    const-string v5, "0x1f403"

    aput-object v5, v3, v4

    const/16 v4, 0x17

    const-string v5, "0x1f402"

    aput-object v5, v3, v4

    const/16 v4, 0x18

    const-string v5, "0x1f404"

    aput-object v5, v3, v4

    const/16 v4, 0x19

    const-string v5, "0x1f42e"

    aput-object v5, v3, v4

    const/16 v4, 0x1a

    const-string v5, "0x1f434"

    aput-object v5, v3, v4

    const/16 v4, 0x1b

    const-string v5, "0x1f417"

    aput-object v5, v3, v4

    const/16 v4, 0x1c

    const-string v5, "0x1f416"

    aput-object v5, v3, v4

    const/16 v4, 0x1d

    const-string v5, "0x1f437"

    aput-object v5, v3, v4

    const/16 v4, 0x1e

    const-string v5, "0x1f43d"

    aput-object v5, v3, v4

    const/16 v4, 0x1f

    const-string v5, "0x1f438"

    aput-object v5, v3, v4

    const/16 v4, 0x20

    const-string v5, "0x1f40d"

    aput-object v5, v3, v4

    const/16 v4, 0x21

    const-string v5, "0x1f43c"

    aput-object v5, v3, v4

    const/16 v4, 0x22

    const-string v5, "0x1f427"

    aput-object v5, v3, v4

    const/16 v4, 0x23

    const-string v5, "0x1f418"

    aput-object v5, v3, v4

    const/16 v4, 0x24

    const-string v5, "0x1f428"

    aput-object v5, v3, v4

    const/16 v4, 0x25

    const-string v5, "0x1f412"

    aput-object v5, v3, v4

    const/16 v4, 0x26

    const-string v5, "0x1f435"

    aput-object v5, v3, v4

    const/16 v4, 0x27

    const-string v5, "0x1f406"

    aput-object v5, v3, v4

    const/16 v4, 0x28

    const-string v5, "0x1f42f"

    aput-object v5, v3, v4

    const/16 v4, 0x29

    const-string v5, "0x1f43b"

    aput-object v5, v3, v4

    const/16 v4, 0x2a

    const-string v5, "0x1f42b"

    aput-object v5, v3, v4

    const/16 v4, 0x2b

    const-string v5, "0x1f42a"

    aput-object v5, v3, v4

    const/16 v4, 0x2c

    const-string v5, "0x1f40a"

    aput-object v5, v3, v4

    const/16 v4, 0x2d

    const-string v5, "0x1f433"

    aput-object v5, v3, v4

    const/16 v4, 0x2e

    const-string v5, "0x1f40b"

    aput-object v5, v3, v4

    const/16 v4, 0x2f

    const-string v5, "0x1f41f"

    aput-object v5, v3, v4

    const/16 v4, 0x30

    const-string v5, "0x1f420"

    aput-object v5, v3, v4

    const/16 v4, 0x31

    const-string v5, "0x1f421"

    aput-object v5, v3, v4

    const/16 v4, 0x32

    const-string v5, "0x1f419"

    aput-object v5, v3, v4

    const/16 v4, 0x33

    const-string v5, "0x1f41a"

    aput-object v5, v3, v4

    const/16 v4, 0x34

    const-string v5, "0x1f42c"

    aput-object v5, v3, v4

    const/16 v4, 0x35

    const-string v5, "0x1f40c"

    aput-object v5, v3, v4

    const/16 v4, 0x36

    const-string v5, "0x1f41b"

    aput-object v5, v3, v4

    const/16 v4, 0x37

    const-string v5, "0x1f41c"

    aput-object v5, v3, v4

    const/16 v4, 0x38

    const-string v5, "0x1f41d"

    aput-object v5, v3, v4

    const/16 v4, 0x39

    const-string v5, "0x1f41e"

    aput-object v5, v3, v4

    const/16 v4, 0x3a

    const-string v5, "0x1f432"

    aput-object v5, v3, v4

    const/16 v4, 0x3b

    const-string v5, "0x1f409"

    aput-object v5, v3, v4

    const/16 v4, 0x3c

    const-string v5, "0x1f43e"

    aput-object v5, v3, v4

    const/16 v4, 0x3d

    const-string v5, "0x1f378"

    aput-object v5, v3, v4

    const/16 v4, 0x3e

    const-string v5, "0x1f37a"

    aput-object v5, v3, v4

    const/16 v4, 0x3f

    const-string v5, "0x1f37b"

    aput-object v5, v3, v4

    const/16 v4, 0x40

    const-string v5, "0x1f377"

    aput-object v5, v3, v4

    const/16 v4, 0x41

    const-string v5, "0x1f379"

    aput-object v5, v3, v4

    const/16 v4, 0x42

    const-string v5, "0x1f376"

    aput-object v5, v3, v4

    const/16 v4, 0x43

    const-string v5, "0x2615"

    aput-object v5, v3, v4

    const/16 v4, 0x44

    const-string v5, "0x1f375"

    aput-object v5, v3, v4

    const/16 v4, 0x45

    const-string v5, "0x1f37c"

    aput-object v5, v3, v4

    const/16 v4, 0x46

    const-string v5, "0x1f374"

    aput-object v5, v3, v4

    const/16 v4, 0x47

    const-string v5, "0x1f368"

    aput-object v5, v3, v4

    const/16 v4, 0x48

    const-string v5, "0x1f367"

    aput-object v5, v3, v4

    const/16 v4, 0x49

    const-string v5, "0x1f366"

    aput-object v5, v3, v4

    const/16 v4, 0x4a

    const-string v5, "0x1f369"

    aput-object v5, v3, v4

    const/16 v4, 0x4b

    const-string v5, "0x1f370"

    aput-object v5, v3, v4

    const/16 v4, 0x4c

    const-string v5, "0x1f36a"

    aput-object v5, v3, v4

    const/16 v4, 0x4d

    const-string v5, "0x1f36b"

    aput-object v5, v3, v4

    const/16 v4, 0x4e

    const-string v5, "0x1f36c"

    aput-object v5, v3, v4

    const/16 v4, 0x4f

    const-string v5, "0x1f36d"

    aput-object v5, v3, v4

    const/16 v4, 0x50

    const-string v5, "0x1f36e"

    aput-object v5, v3, v4

    const/16 v4, 0x51

    const-string v5, "0x1f36f"

    aput-object v5, v3, v4

    const/16 v4, 0x52

    const-string v5, "0x1f373"

    aput-object v5, v3, v4

    const/16 v4, 0x53

    const-string v5, "0x1f354"

    aput-object v5, v3, v4

    const/16 v4, 0x54

    const-string v5, "0x1f35f"

    aput-object v5, v3, v4

    const/16 v4, 0x55

    const-string v5, "0x1f35d"

    aput-object v5, v3, v4

    const/16 v4, 0x56

    const-string v5, "0x1f355"

    aput-object v5, v3, v4

    const/16 v4, 0x57

    const-string v5, "0x1f356"

    aput-object v5, v3, v4

    const/16 v4, 0x58

    const-string v5, "0x1f357"

    aput-object v5, v3, v4

    const/16 v4, 0x59

    const-string v5, "0x1f364"

    aput-object v5, v3, v4

    const/16 v4, 0x5a

    const-string v5, "0x1f363"

    aput-object v5, v3, v4

    const/16 v4, 0x5b

    const-string v5, "0x1f371"

    aput-object v5, v3, v4

    const/16 v4, 0x5c

    const-string v5, "0x1f35e"

    aput-object v5, v3, v4

    const/16 v4, 0x5d

    const-string v5, "0x1f35c"

    aput-object v5, v3, v4

    const/16 v4, 0x5e

    const-string v5, "0x1f359"

    aput-object v5, v3, v4

    const/16 v4, 0x5f

    const-string v5, "0x1f35a"

    aput-object v5, v3, v4

    const/16 v4, 0x60

    const-string v5, "0x1f35b"

    aput-object v5, v3, v4

    const/16 v4, 0x61

    const-string v5, "0x1f372"

    aput-object v5, v3, v4

    const/16 v4, 0x62

    const-string v5, "0x1f365"

    aput-object v5, v3, v4

    const/16 v4, 0x63

    const-string v5, "0x1f362"

    aput-object v5, v3, v4

    const/16 v4, 0x64

    const-string v5, "0x1f361"

    aput-object v5, v3, v4

    const/16 v4, 0x65

    const-string v5, "0x1f358"

    aput-object v5, v3, v4

    const/16 v4, 0x66

    const-string v5, "0x1f360"

    aput-object v5, v3, v4

    const/16 v4, 0x67

    const-string v5, "0x1f34c"

    aput-object v5, v3, v4

    const/16 v4, 0x68

    const-string v5, "0x1f34e"

    aput-object v5, v3, v4

    const/16 v4, 0x69

    const-string v5, "0x1f34f"

    aput-object v5, v3, v4

    const/16 v4, 0x6a

    const-string v5, "0x1f34a"

    aput-object v5, v3, v4

    const/16 v4, 0x6b

    const-string v5, "0x1f34b"

    aput-object v5, v3, v4

    const/16 v4, 0x6c

    const-string v5, "0x1f344"

    aput-object v5, v3, v4

    const/16 v4, 0x6d

    const-string v5, "0x1f345"

    aput-object v5, v3, v4

    const/16 v4, 0x6e

    const-string v5, "0x1f346"

    aput-object v5, v3, v4

    const/16 v4, 0x6f

    const-string v5, "0x1f347"

    aput-object v5, v3, v4

    const/16 v4, 0x70

    const-string v5, "0x1f348"

    aput-object v5, v3, v4

    const/16 v4, 0x71

    const-string v5, "0x1f349"

    aput-object v5, v3, v4

    const/16 v4, 0x72

    const-string v5, "0x1f350"

    aput-object v5, v3, v4

    const/16 v4, 0x73

    const-string v5, "0x1f351"

    aput-object v5, v3, v4

    const/16 v4, 0x74

    const-string v5, "0x1f352"

    aput-object v5, v3, v4

    const/16 v4, 0x75

    const-string v5, "0x1f353"

    aput-object v5, v3, v4

    const/16 v4, 0x76

    const-string v5, "0x1f34d"

    aput-object v5, v3, v4

    const/16 v4, 0x77

    const-string v5, "0x1f330"

    aput-object v5, v3, v4

    const/16 v4, 0x78

    const-string v5, "0x1f331"

    aput-object v5, v3, v4

    const/16 v4, 0x79

    const-string v5, "0x1f332"

    aput-object v5, v3, v4

    const/16 v4, 0x7a

    const-string v5, "0x1f333"

    aput-object v5, v3, v4

    const/16 v4, 0x7b

    const-string v5, "0x1f334"

    aput-object v5, v3, v4

    const/16 v4, 0x7c

    const-string v5, "0x1f335"

    aput-object v5, v3, v4

    const/16 v4, 0x7d

    const-string v5, "0x1f337"

    aput-object v5, v3, v4

    const/16 v4, 0x7e

    const-string v5, "0x1f338"

    aput-object v5, v3, v4

    const/16 v4, 0x7f

    const-string v5, "0x1f339"

    aput-object v5, v3, v4

    const/16 v4, 0x80

    const-string v5, "0x1f340"

    aput-object v5, v3, v4

    const/16 v4, 0x81

    const-string v5, "0x1f341"

    aput-object v5, v3, v4

    const/16 v4, 0x82

    const-string v5, "0x1f342"

    aput-object v5, v3, v4

    const/16 v4, 0x83

    const-string v5, "0x1f343"

    aput-object v5, v3, v4

    const/16 v4, 0x84

    const-string v5, "0x1f33a"

    aput-object v5, v3, v4

    const/16 v4, 0x85

    const-string v5, "0x1f33b"

    aput-object v5, v3, v4

    const/16 v4, 0x86

    const-string v5, "0x1f33c"

    aput-object v5, v3, v4

    const/16 v4, 0x87

    const-string v5, "0x1f33d"

    aput-object v5, v3, v4

    const/16 v4, 0x88

    const-string v5, "0x1f33e"

    aput-object v5, v3, v4

    const/16 v4, 0x89

    const-string v5, "0x1f33f"

    aput-object v5, v3, v4

    const/16 v4, 0x8a

    const-string v5, "0x2600"

    aput-object v5, v3, v4

    const/16 v4, 0x8b

    const-string v5, "0x1f308"

    aput-object v5, v3, v4

    const/16 v4, 0x8c

    const-string v5, "0x26c5"

    aput-object v5, v3, v4

    const/16 v4, 0x8d

    const-string v5, "0x2601"

    aput-object v5, v3, v4

    const/16 v4, 0x8e

    const-string v5, "0x1f301"

    aput-object v5, v3, v4

    const/16 v4, 0x8f

    const-string v5, "0x1f302"

    aput-object v5, v3, v4

    const/16 v4, 0x90

    const-string v5, "0x2614"

    aput-object v5, v3, v4

    const/16 v4, 0x91

    const-string v5, "0x1f4a7"

    aput-object v5, v3, v4

    const/16 v4, 0x92

    const-string v5, "0x26a1"

    aput-object v5, v3, v4

    const/16 v4, 0x93

    const-string v5, "0x1f300"

    aput-object v5, v3, v4

    const/16 v4, 0x94

    const-string v5, "0x2744"

    aput-object v5, v3, v4

    const/16 v4, 0x95

    const-string v5, "0x26c4"

    aput-object v5, v3, v4

    const/16 v4, 0x96

    const-string v5, "0x1f319"

    aput-object v5, v3, v4

    const/16 v4, 0x97

    const-string v5, "0x1f31e"

    aput-object v5, v3, v4

    const/16 v4, 0x98

    const-string v5, "0x1f31d"

    aput-object v5, v3, v4

    const/16 v4, 0x99

    const-string v5, "0x1f31a"

    aput-object v5, v3, v4

    const/16 v4, 0x9a

    const-string v5, "0x1f31b"

    aput-object v5, v3, v4

    const/16 v4, 0x9b

    const-string v5, "0x1f31c"

    aput-object v5, v3, v4

    const/16 v4, 0x9c

    const-string v5, "0x1f311"

    aput-object v5, v3, v4

    const/16 v4, 0x9d

    const-string v5, "0x1f312"

    aput-object v5, v3, v4

    const/16 v4, 0x9e

    const-string v5, "0x1f313"

    aput-object v5, v3, v4

    const/16 v4, 0x9f

    const-string v5, "0x1f314"

    aput-object v5, v3, v4

    const/16 v4, 0xa0

    const-string v5, "0x1f315"

    aput-object v5, v3, v4

    const/16 v4, 0xa1

    const-string v5, "0x1f316"

    aput-object v5, v3, v4

    const/16 v4, 0xa2

    const-string v5, "0x1f317"

    aput-object v5, v3, v4

    const/16 v4, 0xa3

    const-string v5, "0x1f318"

    aput-object v5, v3, v4

    const/16 v4, 0xa4

    const-string v5, "0x1f391"

    aput-object v5, v3, v4

    const/16 v4, 0xa5

    const-string v5, "0x1f304"

    aput-object v5, v3, v4

    const/16 v4, 0xa6

    const-string v5, "0x1f305"

    aput-object v5, v3, v4

    const/16 v4, 0xa7

    const-string v5, "0x1f307"

    aput-object v5, v3, v4

    const/16 v4, 0xa8

    const-string v5, "0x1f306"

    aput-object v5, v3, v4

    const/16 v4, 0xa9

    const-string v5, "0x1f303"

    aput-object v5, v3, v4

    const/16 v4, 0xaa

    const-string v5, "0x1f30c"

    aput-object v5, v3, v4

    const/16 v4, 0xab

    const-string v5, "0x1f309"

    aput-object v5, v3, v4

    const/16 v4, 0xac

    const-string v5, "0x1f30a"

    aput-object v5, v3, v4

    const/16 v4, 0xad

    const-string v5, "0x1f30b"

    aput-object v5, v3, v4

    const/16 v4, 0xae

    const-string v5, "0x1f30e"

    aput-object v5, v3, v4

    const/16 v4, 0xaf

    const-string v5, "0x1f30f"

    aput-object v5, v3, v4

    const/16 v4, 0xb0

    const-string v5, "0x1f30d"

    aput-object v5, v3, v4

    const/16 v4, 0xb1

    const-string v5, "0x1f310"

    aput-object v5, v3, v4

    aput-object v3, v2, v8

    const/16 v3, 0x72

    new-array v3, v3, [Ljava/lang/String;

    const-string v4, "0x1f3e0"

    aput-object v4, v3, v6

    const-string v4, "0x1f3e1"

    aput-object v4, v3, v7

    const-string v4, "0x1f3e2"

    aput-object v4, v3, v8

    const-string v4, "0x1f3e3"

    aput-object v4, v3, v9

    const-string v4, "0x1f3e4"

    aput-object v4, v3, v10

    const/4 v4, 0x5

    const-string v5, "0x1f3e5"

    aput-object v5, v3, v4

    const/4 v4, 0x6

    const-string v5, "0x1f3e6"

    aput-object v5, v3, v4

    const/4 v4, 0x7

    const-string v5, "0x1f3e7"

    aput-object v5, v3, v4

    const/16 v4, 0x8

    const-string v5, "0x1f3e8"

    aput-object v5, v3, v4

    const/16 v4, 0x9

    const-string v5, "0x1f3e9"

    aput-object v5, v3, v4

    const/16 v4, 0xa

    const-string v5, "0x1f3ea"

    aput-object v5, v3, v4

    const/16 v4, 0xb

    const-string v5, "0x1f3eb"

    aput-object v5, v3, v4

    const/16 v4, 0xc

    const-string v5, "0x26ea"

    aput-object v5, v3, v4

    const/16 v4, 0xd

    const-string v5, "0x26f2"

    aput-object v5, v3, v4

    const/16 v4, 0xe

    const-string v5, "0x1f3ec"

    aput-object v5, v3, v4

    const/16 v4, 0xf

    const-string v5, "0x1f3f0"

    aput-object v5, v3, v4

    const/16 v4, 0x10

    const-string v5, "0x1f3ed"

    aput-object v5, v3, v4

    const/16 v4, 0x11

    const-string v5, "0x1f5fb"

    aput-object v5, v3, v4

    const/16 v4, 0x12

    const-string v5, "0x1f5fc"

    aput-object v5, v3, v4

    const/16 v4, 0x13

    const-string v5, "0x1f5fd"

    aput-object v5, v3, v4

    const/16 v4, 0x14

    const-string v5, "0x1f5ff"

    aput-object v5, v3, v4

    const/16 v4, 0x15

    const-string v5, "0x2693"

    aput-object v5, v3, v4

    const/16 v4, 0x16

    const-string v5, "0x1f488"

    aput-object v5, v3, v4

    const/16 v4, 0x17

    const-string v5, "0x1f527"

    aput-object v5, v3, v4

    const/16 v4, 0x18

    const-string v5, "0x1f528"

    aput-object v5, v3, v4

    const/16 v4, 0x19

    const-string v5, "0x1f529"

    aput-object v5, v3, v4

    const/16 v4, 0x1a

    const-string v5, "0x1f6bf"

    aput-object v5, v3, v4

    const/16 v4, 0x1b

    const-string v5, "0x1f6c1"

    aput-object v5, v3, v4

    const/16 v4, 0x1c

    const-string v5, "0x1f6c0"

    aput-object v5, v3, v4

    const/16 v4, 0x1d

    const-string v5, "0x1f6bd"

    aput-object v5, v3, v4

    const/16 v4, 0x1e

    const-string v5, "0x1f6be"

    aput-object v5, v3, v4

    const/16 v4, 0x1f

    const-string v5, "0x1f3bd"

    aput-object v5, v3, v4

    const/16 v4, 0x20

    const-string v5, "0x1f3a3"

    aput-object v5, v3, v4

    const/16 v4, 0x21

    const-string v5, "0x1f3b1"

    aput-object v5, v3, v4

    const/16 v4, 0x22

    const-string v5, "0x1f3b3"

    aput-object v5, v3, v4

    const/16 v4, 0x23

    const-string v5, "0x26be"

    aput-object v5, v3, v4

    const/16 v4, 0x24

    const-string v5, "0x26f3"

    aput-object v5, v3, v4

    const/16 v4, 0x25

    const-string v5, "0x1f3be"

    aput-object v5, v3, v4

    const/16 v4, 0x26

    const-string v5, "0x26bd"

    aput-object v5, v3, v4

    const/16 v4, 0x27

    const-string v5, "0x1f3bf"

    aput-object v5, v3, v4

    const/16 v4, 0x28

    const-string v5, "0x1f3c0"

    aput-object v5, v3, v4

    const/16 v4, 0x29

    const-string v5, "0x1f3c1"

    aput-object v5, v3, v4

    const/16 v4, 0x2a

    const-string v5, "0x1f3c2"

    aput-object v5, v3, v4

    const/16 v4, 0x2b

    const-string v5, "0x1f3c3"

    aput-object v5, v3, v4

    const/16 v4, 0x2c

    const-string v5, "0x1f3c4"

    aput-object v5, v3, v4

    const/16 v4, 0x2d

    const-string v5, "0x1f3c6"

    aput-object v5, v3, v4

    const/16 v4, 0x2e

    const-string v5, "0x1f3c7"

    aput-object v5, v3, v4

    const/16 v4, 0x2f

    const-string v5, "0x1f40e"

    aput-object v5, v3, v4

    const/16 v4, 0x30

    const-string v5, "0x1f3c8"

    aput-object v5, v3, v4

    const/16 v4, 0x31

    const-string v5, "0x1f3c9"

    aput-object v5, v3, v4

    const/16 v4, 0x32

    const-string v5, "0x1f3ca"

    aput-object v5, v3, v4

    const/16 v4, 0x33

    const-string v5, "0x1f682"

    aput-object v5, v3, v4

    const/16 v4, 0x34

    const-string v5, "0x1f683"

    aput-object v5, v3, v4

    const/16 v4, 0x35

    const-string v5, "0x1f684"

    aput-object v5, v3, v4

    const/16 v4, 0x36

    const-string v5, "0x1f685"

    aput-object v5, v3, v4

    const/16 v4, 0x37

    const-string v5, "0x1f686"

    aput-object v5, v3, v4

    const/16 v4, 0x38

    const-string v5, "0x1f687"

    aput-object v5, v3, v4

    const/16 v4, 0x39

    const-string v5, "0x24c2"

    aput-object v5, v3, v4

    const/16 v4, 0x3a

    const-string v5, "0x1f688"

    aput-object v5, v3, v4

    const/16 v4, 0x3b

    const-string v5, "0x1f68a"

    aput-object v5, v3, v4

    const/16 v4, 0x3c

    const-string v5, "0x1f68b"

    aput-object v5, v3, v4

    const/16 v4, 0x3d

    const-string v5, "0x1f68c"

    aput-object v5, v3, v4

    const/16 v4, 0x3e

    const-string v5, "0x1f68d"

    aput-object v5, v3, v4

    const/16 v4, 0x3f

    const-string v5, "0x1f68e"

    aput-object v5, v3, v4

    const/16 v4, 0x40

    const-string v5, "0x1f68f"

    aput-object v5, v3, v4

    const/16 v4, 0x41

    const-string v5, "0x1f690"

    aput-object v5, v3, v4

    const/16 v4, 0x42

    const-string v5, "0x1f691"

    aput-object v5, v3, v4

    const/16 v4, 0x43

    const-string v5, "0x1f692"

    aput-object v5, v3, v4

    const/16 v4, 0x44

    const-string v5, "0x1f693"

    aput-object v5, v3, v4

    const/16 v4, 0x45

    const-string v5, "0x1f694"

    aput-object v5, v3, v4

    const/16 v4, 0x46

    const-string v5, "0x1f695"

    aput-object v5, v3, v4

    const/16 v4, 0x47

    const-string v5, "0x1f696"

    aput-object v5, v3, v4

    const/16 v4, 0x48

    const-string v5, "0x1f697"

    aput-object v5, v3, v4

    const/16 v4, 0x49

    const-string v5, "0x1f698"

    aput-object v5, v3, v4

    const/16 v4, 0x4a

    const-string v5, "0x1f699"

    aput-object v5, v3, v4

    const/16 v4, 0x4b

    const-string v5, "0x1f69a"

    aput-object v5, v3, v4

    const/16 v4, 0x4c

    const-string v5, "0x1f69b"

    aput-object v5, v3, v4

    const/16 v4, 0x4d

    const-string v5, "0x1f69c"

    aput-object v5, v3, v4

    const/16 v4, 0x4e

    const-string v5, "0x1f69d"

    aput-object v5, v3, v4

    const/16 v4, 0x4f

    const-string v5, "0x1f69e"

    aput-object v5, v3, v4

    const/16 v4, 0x50

    const-string v5, "0x1f69f"

    aput-object v5, v3, v4

    const/16 v4, 0x51

    const-string v5, "0x1f6a0"

    aput-object v5, v3, v4

    const/16 v4, 0x52

    const-string v5, "0x1f6a1"

    aput-object v5, v3, v4

    const/16 v4, 0x53

    const-string v5, "0x1f6a2"

    aput-object v5, v3, v4

    const/16 v4, 0x54

    const-string v5, "0x1f6a3"

    aput-object v5, v3, v4

    const/16 v4, 0x55

    const-string v5, "0x1f681"

    aput-object v5, v3, v4

    const/16 v4, 0x56

    const-string v5, "0x2708"

    aput-object v5, v3, v4

    const/16 v4, 0x57

    const-string v5, "0x1f6c2"

    aput-object v5, v3, v4

    const/16 v4, 0x58

    const-string v5, "0x1f6c3"

    aput-object v5, v3, v4

    const/16 v4, 0x59

    const-string v5, "0x1f6c4"

    aput-object v5, v3, v4

    const/16 v4, 0x5a

    const-string v5, "0x1f6c5"

    aput-object v5, v3, v4

    const/16 v4, 0x5b

    const-string v5, "0x26f5"

    aput-object v5, v3, v4

    const/16 v4, 0x5c

    const-string v5, "0x1f6b2"

    aput-object v5, v3, v4

    const/16 v4, 0x5d

    const-string v5, "0x1f6b3"

    aput-object v5, v3, v4

    const/16 v4, 0x5e

    const-string v5, "0x1f6b4"

    aput-object v5, v3, v4

    const/16 v4, 0x5f

    const-string v5, "0x1f6b5"

    aput-object v5, v3, v4

    const/16 v4, 0x60

    const-string v5, "0x1f6b7"

    aput-object v5, v3, v4

    const/16 v4, 0x61

    const-string v5, "0x1f6b8"

    aput-object v5, v3, v4

    const/16 v4, 0x62

    const-string v5, "0x1f689"

    aput-object v5, v3, v4

    const/16 v4, 0x63

    const-string v5, "0x1f680"

    aput-object v5, v3, v4

    const/16 v4, 0x64

    const-string v5, "0x1f6a4"

    aput-object v5, v3, v4

    const/16 v4, 0x65

    const-string v5, "0x1f6b6"

    aput-object v5, v3, v4

    const/16 v4, 0x66

    const-string v5, "0x26fd"

    aput-object v5, v3, v4

    const/16 v4, 0x67

    const-string v5, "0x1f17f"

    aput-object v5, v3, v4

    const/16 v4, 0x68

    const-string v5, "0x1f6a5"

    aput-object v5, v3, v4

    const/16 v4, 0x69

    const-string v5, "0x1f6a6"

    aput-object v5, v3, v4

    const/16 v4, 0x6a

    const-string v5, "0x1f6a7"

    aput-object v5, v3, v4

    const/16 v4, 0x6b

    const-string v5, "0x1f6a8"

    aput-object v5, v3, v4

    const/16 v4, 0x6c

    const-string v5, "0x2668"

    aput-object v5, v3, v4

    const/16 v4, 0x6d

    const-string v5, "0x1f48c"

    aput-object v5, v3, v4

    const/16 v4, 0x6e

    const-string v5, "0x1f48d"

    aput-object v5, v3, v4

    const/16 v4, 0x6f

    const-string v5, "0x1f48e"

    aput-object v5, v3, v4

    const/16 v4, 0x70

    const-string v5, "0x1f490"

    aput-object v5, v3, v4

    const/16 v4, 0x71

    const-string v5, "0x1f492"

    aput-object v5, v3, v4

    aput-object v3, v2, v9

    const/16 v3, 0xcf

    new-array v3, v3, [Ljava/lang/String;

    const-string v4, "0x1f51d"

    aput-object v4, v3, v6

    const-string v4, "0x1f519"

    aput-object v4, v3, v7

    const-string v4, "0x1f51b"

    aput-object v4, v3, v8

    const-string v4, "0x1f51c"

    aput-object v4, v3, v9

    const-string v4, "0x1f51a"

    aput-object v4, v3, v10

    const/4 v4, 0x5

    const-string v5, "0x23f3"

    aput-object v5, v3, v4

    const/4 v4, 0x6

    const-string v5, "0x231b"

    aput-object v5, v3, v4

    const/4 v4, 0x7

    const-string v5, "0x23f0"

    aput-object v5, v3, v4

    const/16 v4, 0x8

    const-string v5, "0x2648"

    aput-object v5, v3, v4

    const/16 v4, 0x9

    const-string v5, "0x2649"

    aput-object v5, v3, v4

    const/16 v4, 0xa

    const-string v5, "0x264a"

    aput-object v5, v3, v4

    const/16 v4, 0xb

    const-string v5, "0x264b"

    aput-object v5, v3, v4

    const/16 v4, 0xc

    const-string v5, "0x264c"

    aput-object v5, v3, v4

    const/16 v4, 0xd

    const-string v5, "0x264d"

    aput-object v5, v3, v4

    const/16 v4, 0xe

    const-string v5, "0x264e"

    aput-object v5, v3, v4

    const/16 v4, 0xf

    const-string v5, "0x264f"

    aput-object v5, v3, v4

    const/16 v4, 0x10

    const-string v5, "0x2650"

    aput-object v5, v3, v4

    const/16 v4, 0x11

    const-string v5, "0x2651"

    aput-object v5, v3, v4

    const/16 v4, 0x12

    const-string v5, "0x2652"

    aput-object v5, v3, v4

    const/16 v4, 0x13

    const-string v5, "0x2653"

    aput-object v5, v3, v4

    const/16 v4, 0x14

    const-string v5, "0x26ce"

    aput-object v5, v3, v4

    const/16 v4, 0x15

    const-string v5, "0x1f531"

    aput-object v5, v3, v4

    const/16 v4, 0x16

    const-string v5, "0x1f52f"

    aput-object v5, v3, v4

    const/16 v4, 0x17

    const-string v5, "0x1f6bb"

    aput-object v5, v3, v4

    const/16 v4, 0x18

    const-string v5, "0x1f6ae"

    aput-object v5, v3, v4

    const/16 v4, 0x19

    const-string v5, "0x1f6af"

    aput-object v5, v3, v4

    const/16 v4, 0x1a

    const-string v5, "0x1f6b0"

    aput-object v5, v3, v4

    const/16 v4, 0x1b

    const-string v5, "0x1f6b1"

    aput-object v5, v3, v4

    const/16 v4, 0x1c

    const-string v5, "0x1f170"

    aput-object v5, v3, v4

    const/16 v4, 0x1d

    const-string v5, "0x1f171"

    aput-object v5, v3, v4

    const/16 v4, 0x1e

    const-string v5, "0x1f18e"

    aput-object v5, v3, v4

    const/16 v4, 0x1f

    const-string v5, "0x1f17e"

    aput-object v5, v3, v4

    const/16 v4, 0x20

    const-string v5, "0x1f4ae"

    aput-object v5, v3, v4

    const/16 v4, 0x21

    const-string v5, "0x1f4af"

    aput-object v5, v3, v4

    const/16 v4, 0x22

    const-string v5, "0x1f520"

    aput-object v5, v3, v4

    const/16 v4, 0x23

    const-string v5, "0x1f521"

    aput-object v5, v3, v4

    const/16 v4, 0x24

    const-string v5, "0x1f522"

    aput-object v5, v3, v4

    const/16 v4, 0x25

    const-string v5, "0x1f523"

    aput-object v5, v3, v4

    const/16 v4, 0x26

    const-string v5, "0x1f524"

    aput-object v5, v3, v4

    const/16 v4, 0x27

    const-string v5, "0x27bf"

    aput-object v5, v3, v4

    const/16 v4, 0x28

    const-string v5, "0x1f4f6"

    aput-object v5, v3, v4

    const/16 v4, 0x29

    const-string v5, "0x1f4f3"

    aput-object v5, v3, v4

    const/16 v4, 0x2a

    const-string v5, "0x1f4f4"

    aput-object v5, v3, v4

    const/16 v4, 0x2b

    const-string v5, "0x1f4f5"

    aput-object v5, v3, v4

    const/16 v4, 0x2c

    const-string v5, "0x1f6b9"

    aput-object v5, v3, v4

    const/16 v4, 0x2d

    const-string v5, "0x1f6ba"

    aput-object v5, v3, v4

    const/16 v4, 0x2e

    const-string v5, "0x1f6bc"

    aput-object v5, v3, v4

    const/16 v4, 0x2f

    const-string v5, "0x267f"

    aput-object v5, v3, v4

    const/16 v4, 0x30

    const-string v5, "0x267b"

    aput-object v5, v3, v4

    const/16 v4, 0x31

    const-string v5, "0x1f6ad"

    aput-object v5, v3, v4

    const/16 v4, 0x32

    const-string v5, "0x1f6a9"

    aput-object v5, v3, v4

    const/16 v4, 0x33

    const-string v5, "0x26a0"

    aput-object v5, v3, v4

    const/16 v4, 0x34

    const-string v5, "0x1f201"

    aput-object v5, v3, v4

    const/16 v4, 0x35

    const-string v5, "0x1f51e"

    aput-object v5, v3, v4

    const/16 v4, 0x36

    const-string v5, "0x26d4"

    aput-object v5, v3, v4

    const/16 v4, 0x37

    const-string v5, "0x1f192"

    aput-object v5, v3, v4

    const/16 v4, 0x38

    const-string v5, "0x1f197"

    aput-object v5, v3, v4

    const/16 v4, 0x39

    const-string v5, "0x1f195"

    aput-object v5, v3, v4

    const/16 v4, 0x3a

    const-string v5, "0x1f198"

    aput-object v5, v3, v4

    const/16 v4, 0x3b

    const-string v5, "0x1f199"

    aput-object v5, v3, v4

    const/16 v4, 0x3c

    const-string v5, "0x1f193"

    aput-object v5, v3, v4

    const/16 v4, 0x3d

    const-string v5, "0x1f196"

    aput-object v5, v3, v4

    const/16 v4, 0x3e

    const-string v5, "0x1f19a"

    aput-object v5, v3, v4

    const/16 v4, 0x3f

    const-string v5, "0x1f232"

    aput-object v5, v3, v4

    const/16 v4, 0x40

    const-string v5, "0x1f233"

    aput-object v5, v3, v4

    const/16 v4, 0x41

    const-string v5, "0x1f234"

    aput-object v5, v3, v4

    const/16 v4, 0x42

    const-string v5, "0x1f235"

    aput-object v5, v3, v4

    const/16 v4, 0x43

    const-string v5, "0x1f236"

    aput-object v5, v3, v4

    const/16 v4, 0x44

    const-string v5, "0x1f237"

    aput-object v5, v3, v4

    const/16 v4, 0x45

    const-string v5, "0x1f238"

    aput-object v5, v3, v4

    const/16 v4, 0x46

    const-string v5, "0x1f239"

    aput-object v5, v3, v4

    const/16 v4, 0x47

    const-string v5, "0x1f202"

    aput-object v5, v3, v4

    const/16 v4, 0x48

    const-string v5, "0x1f23a"

    aput-object v5, v3, v4

    const/16 v4, 0x49

    const-string v5, "0x1f250"

    aput-object v5, v3, v4

    const/16 v4, 0x4a

    const-string v5, "0x1f251"

    aput-object v5, v3, v4

    const/16 v4, 0x4b

    const-string v5, "0x3299"

    aput-object v5, v3, v4

    const/16 v4, 0x4c

    const-string v5, "0x1f21a"

    aput-object v5, v3, v4

    const/16 v4, 0x4d

    const-string v5, "0x1f22f"

    aput-object v5, v3, v4

    const/16 v4, 0x4e

    const-string v5, "0x3297"

    aput-object v5, v3, v4

    const/16 v4, 0x4f

    const-string v5, "0x2b55"

    aput-object v5, v3, v4

    const/16 v4, 0x50

    const-string v5, "0x274c"

    aput-object v5, v3, v4

    const/16 v4, 0x51

    const-string v5, "0x274e"

    aput-object v5, v3, v4

    const/16 v4, 0x52

    const-string v5, "0x2139"

    aput-object v5, v3, v4

    const/16 v4, 0x53

    const-string v5, "0x1f6ab"

    aput-object v5, v3, v4

    const/16 v4, 0x54

    const-string v5, "0x2705"

    aput-object v5, v3, v4

    const/16 v4, 0x55

    const-string v5, "0x2714"

    aput-object v5, v3, v4

    const/16 v4, 0x56

    const-string v5, "0x1f517"

    aput-object v5, v3, v4

    const/16 v4, 0x57

    const-string v5, "0x2734"

    aput-object v5, v3, v4

    const/16 v4, 0x58

    const-string v5, "0x2733"

    aput-object v5, v3, v4

    const/16 v4, 0x59

    const-string v5, "0x2795"

    aput-object v5, v3, v4

    const/16 v4, 0x5a

    const-string v5, "0x2796"

    aput-object v5, v3, v4

    const/16 v4, 0x5b

    const-string v5, "0x2716"

    aput-object v5, v3, v4

    const/16 v4, 0x5c

    const-string v5, "0x2797"

    aput-object v5, v3, v4

    const/16 v4, 0x5d

    const-string v5, "0x1f4a0"

    aput-object v5, v3, v4

    const/16 v4, 0x5e

    const-string v5, "0x1f4a1"

    aput-object v5, v3, v4

    const/16 v4, 0x5f

    const-string v5, "0x1f4a4"

    aput-object v5, v3, v4

    const/16 v4, 0x60

    const-string v5, "0x1f4a2"

    aput-object v5, v3, v4

    const/16 v4, 0x61

    const-string v5, "0x1f525"

    aput-object v5, v3, v4

    const/16 v4, 0x62

    const-string v5, "0x1f4a5"

    aput-object v5, v3, v4

    const/16 v4, 0x63

    const-string v5, "0x1f4a8"

    aput-object v5, v3, v4

    const/16 v4, 0x64

    const-string v5, "0x1f4a6"

    aput-object v5, v3, v4

    const/16 v4, 0x65

    const-string v5, "0x1f4ab"

    aput-object v5, v3, v4

    const/16 v4, 0x66

    const-string v5, "0x1f55b"

    aput-object v5, v3, v4

    const/16 v4, 0x67

    const-string v5, "0x1f567"

    aput-object v5, v3, v4

    const/16 v4, 0x68

    const-string v5, "0x1f550"

    aput-object v5, v3, v4

    const/16 v4, 0x69

    const-string v5, "0x1f55c"

    aput-object v5, v3, v4

    const/16 v4, 0x6a

    const-string v5, "0x1f551"

    aput-object v5, v3, v4

    const/16 v4, 0x6b

    const-string v5, "0x1f55d"

    aput-object v5, v3, v4

    const/16 v4, 0x6c

    const-string v5, "0x1f552"

    aput-object v5, v3, v4

    const/16 v4, 0x6d

    const-string v5, "0x1f55e"

    aput-object v5, v3, v4

    const/16 v4, 0x6e

    const-string v5, "0x1f553"

    aput-object v5, v3, v4

    const/16 v4, 0x6f

    const-string v5, "0x1f55f"

    aput-object v5, v3, v4

    const/16 v4, 0x70

    const-string v5, "0x1f554"

    aput-object v5, v3, v4

    const/16 v4, 0x71

    const-string v5, "0x1f560"

    aput-object v5, v3, v4

    const/16 v4, 0x72

    const-string v5, "0x1f555"

    aput-object v5, v3, v4

    const/16 v4, 0x73

    const-string v5, "0x1f561"

    aput-object v5, v3, v4

    const/16 v4, 0x74

    const-string v5, "0x1f556"

    aput-object v5, v3, v4

    const/16 v4, 0x75

    const-string v5, "0x1f562"

    aput-object v5, v3, v4

    const/16 v4, 0x76

    const-string v5, "0x1f557"

    aput-object v5, v3, v4

    const/16 v4, 0x77

    const-string v5, "0x1f563"

    aput-object v5, v3, v4

    const/16 v4, 0x78

    const-string v5, "0x1f558"

    aput-object v5, v3, v4

    const/16 v4, 0x79

    const-string v5, "0x1f564"

    aput-object v5, v3, v4

    const/16 v4, 0x7a

    const-string v5, "0x1f559"

    aput-object v5, v3, v4

    const/16 v4, 0x7b

    const-string v5, "0x1f565"

    aput-object v5, v3, v4

    const/16 v4, 0x7c

    const-string v5, "0x1f55a"

    aput-object v5, v3, v4

    const/16 v4, 0x7d

    const-string v5, "0x1f566"

    aput-object v5, v3, v4

    const/16 v4, 0x7e

    const-string v5, "0x2195"

    aput-object v5, v3, v4

    const/16 v4, 0x7f

    const-string v5, "0x2b06"

    aput-object v5, v3, v4

    const/16 v4, 0x80

    const-string v5, "0x2197"

    aput-object v5, v3, v4

    const/16 v4, 0x81

    const-string v5, "0x27a1"

    aput-object v5, v3, v4

    const/16 v4, 0x82

    const-string v5, "0x2198"

    aput-object v5, v3, v4

    const/16 v4, 0x83

    const-string v5, "0x2b07"

    aput-object v5, v3, v4

    const/16 v4, 0x84

    const-string v5, "0x2199"

    aput-object v5, v3, v4

    const/16 v4, 0x85

    const-string v5, "0x2b05"

    aput-object v5, v3, v4

    const/16 v4, 0x86

    const-string v5, "0x2196"

    aput-object v5, v3, v4

    const/16 v4, 0x87

    const-string v5, "0x2194"

    aput-object v5, v3, v4

    const/16 v4, 0x88

    const-string v5, "0x2934"

    aput-object v5, v3, v4

    const/16 v4, 0x89

    const-string v5, "0x2935"

    aput-object v5, v3, v4

    const/16 v4, 0x8a

    const-string v5, "0x23ea"

    aput-object v5, v3, v4

    const/16 v4, 0x8b

    const-string v5, "0x23eb"

    aput-object v5, v3, v4

    const/16 v4, 0x8c

    const-string v5, "0x23ec"

    aput-object v5, v3, v4

    const/16 v4, 0x8d

    const-string v5, "0x23e9"

    aput-object v5, v3, v4

    const/16 v4, 0x8e

    const-string v5, "0x25c0"

    aput-object v5, v3, v4

    const/16 v4, 0x8f

    const-string v5, "0x25b6"

    aput-object v5, v3, v4

    const/16 v4, 0x90

    const-string v5, "0x1f53d"

    aput-object v5, v3, v4

    const/16 v4, 0x91

    const-string v5, "0x1f53c"

    aput-object v5, v3, v4

    const/16 v4, 0x92

    const-string v5, "0x2747"

    aput-object v5, v3, v4

    const/16 v4, 0x93

    const-string v5, "0x2728"

    aput-object v5, v3, v4

    const/16 v4, 0x94

    const-string v5, "0x1f534"

    aput-object v5, v3, v4

    const/16 v4, 0x95

    const-string v5, "0x1f535"

    aput-object v5, v3, v4

    const/16 v4, 0x96

    const-string v5, "0x26aa"

    aput-object v5, v3, v4

    const/16 v4, 0x97

    const-string v5, "0x26ab"

    aput-object v5, v3, v4

    const/16 v4, 0x98

    const-string v5, "0x1f533"

    aput-object v5, v3, v4

    const/16 v4, 0x99

    const-string v5, "0x1f532"

    aput-object v5, v3, v4

    const/16 v4, 0x9a

    const-string v5, "0x2b50"

    aput-object v5, v3, v4

    const/16 v4, 0x9b

    const-string v5, "0x1f31f"

    aput-object v5, v3, v4

    const/16 v4, 0x9c

    const-string v5, "0x1f320"

    aput-object v5, v3, v4

    const/16 v4, 0x9d

    const-string v5, "0x25ab"

    aput-object v5, v3, v4

    const/16 v4, 0x9e

    const-string v5, "0x25fd"

    aput-object v5, v3, v4

    const/16 v4, 0x9f

    const-string v5, "0x25fe"

    aput-object v5, v3, v4

    const/16 v4, 0xa0

    const-string v5, "0x25fb"

    aput-object v5, v3, v4

    const/16 v4, 0xa1

    const-string v5, "0x25fc"

    aput-object v5, v3, v4

    const/16 v4, 0xa2

    const-string v5, "0x2b1c"

    aput-object v5, v3, v4

    const/16 v4, 0xa3

    const-string v5, "0x2b1b"

    aput-object v5, v3, v4

    const/16 v4, 0xa4

    const-string v5, "0x1f538"

    aput-object v5, v3, v4

    const/16 v4, 0xa5

    const-string v5, "0x1f539"

    aput-object v5, v3, v4

    const/16 v4, 0xa6

    const-string v5, "0x1f536"

    aput-object v5, v3, v4

    const/16 v4, 0xa7

    const-string v5, "0x1f537"

    aput-object v5, v3, v4

    const/16 v4, 0xa8

    const-string v5, "0x1f53a"

    aput-object v5, v3, v4

    const/16 v4, 0xa9

    const-string v5, "0x1f53b"

    aput-object v5, v3, v4

    const/16 v4, 0xaa

    const-string v5, "0x2754"

    aput-object v5, v3, v4

    const/16 v4, 0xab

    const-string v5, "0x2753"

    aput-object v5, v3, v4

    const/16 v4, 0xac

    const-string v5, "0x2755"

    aput-object v5, v3, v4

    const/16 v4, 0xad

    const-string v5, "0x2757"

    aput-object v5, v3, v4

    const/16 v4, 0xae

    const-string v5, "0x2049"

    aput-object v5, v3, v4

    const/16 v4, 0xaf

    const-string v5, "0x3030"

    aput-object v5, v3, v4

    const/16 v4, 0xb0

    const-string v5, "0x27b0"

    aput-object v5, v3, v4

    const/16 v4, 0xb1

    const-string v5, "0x2660"

    aput-object v5, v3, v4

    const/16 v4, 0xb2

    const-string v5, "0x2665"

    aput-object v5, v3, v4

    const/16 v4, 0xb3

    const-string v5, "0x2663"

    aput-object v5, v3, v4

    const/16 v4, 0xb4

    const-string v5, "0x2666"

    aput-object v5, v3, v4

    const/16 v4, 0xb5

    const-string v5, "0x1f194"

    aput-object v5, v3, v4

    const/16 v4, 0xb6

    const-string v5, "0x1f511"

    aput-object v5, v3, v4

    const/16 v4, 0xb7

    const-string v5, "0x21a9"

    aput-object v5, v3, v4

    const/16 v4, 0xb8

    const-string v5, "0x1f191"

    aput-object v5, v3, v4

    const/16 v4, 0xb9

    const-string v5, "0x1f50d"

    aput-object v5, v3, v4

    const/16 v4, 0xba

    const-string v5, "0x1f512"

    aput-object v5, v3, v4

    const/16 v4, 0xbb

    const-string v5, "0x1f513"

    aput-object v5, v3, v4

    const/16 v4, 0xbc

    const-string v5, "0x21aa"

    aput-object v5, v3, v4

    const/16 v4, 0xbd

    const-string v5, "0x1f510"

    aput-object v5, v3, v4

    const/16 v4, 0xbe

    const-string v5, "0x2611"

    aput-object v5, v3, v4

    const/16 v4, 0xbf

    const-string v5, "0x1f518"

    aput-object v5, v3, v4

    const/16 v4, 0xc0

    const-string v5, "0x1f50e"

    aput-object v5, v3, v4

    const/16 v4, 0xc1

    const-string v5, "0x1f516"

    aput-object v5, v3, v4

    const/16 v4, 0xc2

    const-string v5, "0x1f50f"

    aput-object v5, v3, v4

    const/16 v4, 0xc3

    const-string v5, "0x1f503"

    aput-object v5, v3, v4

    const/16 v4, 0xc4

    const-string v5, "0x1f500"

    aput-object v5, v3, v4

    const/16 v4, 0xc5

    const-string v5, "0x1f501"

    aput-object v5, v3, v4

    const/16 v4, 0xc6

    const-string v5, "0x1f502"

    aput-object v5, v3, v4

    const/16 v4, 0xc7

    const-string v5, "0x1f504"

    aput-object v5, v3, v4

    const/16 v4, 0xc8

    const-string v5, "0x1f4e7"

    aput-object v5, v3, v4

    const/16 v4, 0xc9

    const-string v5, "0x1f505"

    aput-object v5, v3, v4

    const/16 v4, 0xca

    const-string v5, "0x1f506"

    aput-object v5, v3, v4

    const/16 v4, 0xcb

    const-string v5, "0x1f507"

    aput-object v5, v3, v4

    const/16 v4, 0xcc

    const-string v5, "0x1f508"

    aput-object v5, v3, v4

    const/16 v4, 0xcd

    const-string v5, "0x1f509"

    aput-object v5, v3, v4

    const/16 v4, 0xce

    const-string v5, "0x1f50a"

    aput-object v5, v3, v4

    aput-object v3, v2, v10

    sput-object v2, Lcom/android/mms/ui/EmoticonList;->sEmoticonList:[[Ljava/lang/String;

    sget-object v2, Lcom/android/mms/ui/EmoticonList;->sEmoticonList:[[Ljava/lang/String;

    array-length v2, v2

    new-array v2, v2, [[Ljava/lang/String;

    sput-object v2, Lcom/android/mms/ui/EmoticonList;->sEmoticonUTFList:[[Ljava/lang/String;

    const/4 v0, 0x0

    :goto_0
    sget-object v2, Lcom/android/mms/ui/EmoticonList;->sEmoticonList:[[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    sget-object v2, Lcom/android/mms/ui/EmoticonList;->sEmoticonUTFList:[[Ljava/lang/String;

    sget-object v3, Lcom/android/mms/ui/EmoticonList;->sEmoticonList:[[Ljava/lang/String;

    aget-object v3, v3, v0

    array-length v3, v3

    new-array v3, v3, [Ljava/lang/String;

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_1
    sget-object v2, Lcom/android/mms/ui/EmoticonList;->sEmoticonList:[[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_2

    const/4 v1, 0x0

    :goto_2
    sget-object v2, Lcom/android/mms/ui/EmoticonList;->sEmoticonList:[[Ljava/lang/String;

    aget-object v2, v2, v0

    array-length v2, v2

    if-ge v1, v2, :cond_1

    sget-object v2, Lcom/android/mms/ui/EmoticonList;->sEmoticonUTFList:[[Ljava/lang/String;

    aget-object v2, v2, v0

    sget-object v3, Lcom/android/mms/ui/EmoticonList;->sEmoticonList:[[Ljava/lang/String;

    aget-object v3, v3, v0

    aget-object v3, v3, v1

    invoke-static {v3}, Lcom/android/mms/ui/MessageUtils;->unicodeToUTF16(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method
