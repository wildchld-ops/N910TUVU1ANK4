.class public interface abstract Lcom/sec/ims/client/caps/ServiceContract$Projections;
.super Ljava/lang/Object;
.source "ServiceContract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/ims/client/caps/ServiceContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Projections"
.end annotation


# static fields
.field public static final FEATURE_TAG_PROJECTION:[Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final INCALL_PROJECTION:[Ljava/lang/String;

.field public static final SERVICE_PROJECTION:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "feature_tag"

    aput-object v1, v0, v4

    const-string v1, "is_enabled"

    aput-object v1, v0, v5

    const-string v1, "icon_id"

    aput-object v1, v0, v6

    const-string v1, "package_name"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "int_name"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "int_category"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "sip_uri"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "displayname"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "additional_info"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "service_name"

    aput-object v2, v0, v1

    sput-object v0, Lcom/sec/ims/client/caps/ServiceContract$Projections;->SERVICE_PROJECTION:[Ljava/lang/String;

    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "feature_tag"

    aput-object v1, v0, v4

    const-string v1, "is_enabled"

    aput-object v1, v0, v5

    const-string v1, "icon_id"

    aput-object v1, v0, v6

    const-string v1, "package_name"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "int_name"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "int_category"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "sip_uri"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "service_name"

    aput-object v2, v0, v1

    sput-object v0, Lcom/sec/ims/client/caps/ServiceContract$Projections;->INCALL_PROJECTION:[Ljava/lang/String;

    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "feature_tag"

    aput-object v1, v0, v3

    sput-object v0, Lcom/sec/ims/client/caps/ServiceContract$Projections;->FEATURE_TAG_PROJECTION:[Ljava/lang/String;

    return-void
.end method
