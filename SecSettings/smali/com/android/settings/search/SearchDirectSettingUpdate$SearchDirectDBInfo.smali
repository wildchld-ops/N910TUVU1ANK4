.class Lcom/android/settings/search/SearchDirectSettingUpdate$SearchDirectDBInfo;
.super Ljava/lang/Object;
.source "SearchDirectSettingUpdate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/search/SearchDirectSettingUpdate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SearchDirectDBInfo"
.end annotation


# instance fields
.field DBName:Ljava/lang/String;

.field DBType:I

.field dependencyKey:Ljava/lang/String;

.field keyName:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/settings/search/SearchDirectSettingUpdate$SearchDirectDBInfo;->keyName:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/settings/search/SearchDirectSettingUpdate$SearchDirectDBInfo;->DBName:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/search/SearchDirectSettingUpdate$SearchDirectDBInfo;->DBType:I

    iput-object v1, p0, Lcom/android/settings/search/SearchDirectSettingUpdate$SearchDirectDBInfo;->dependencyKey:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/search/SearchDirectSettingUpdate$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/search/SearchDirectSettingUpdate$SearchDirectDBInfo;-><init>()V

    return-void
.end method
