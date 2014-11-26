.class public interface abstract Lcom/sec/ims/client/caps/ServiceContract;
.super Ljava/lang/Object;
.source "ServiceContract.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/ims/client/caps/ServiceContract$ColumnName;,
        Lcom/sec/ims/client/caps/ServiceContract$Projections;,
        Lcom/sec/ims/client/caps/ServiceContract$QueryParam;,
        Lcom/sec/ims/client/caps/ServiceContract$QueryUri;,
        Lcom/sec/ims/client/caps/ServiceContract$Values;
    }
.end annotation


# static fields
.field public static final DEFAULT_SELECTION:Ljava/lang/String;

.field public static final DEFAULT_SELECTION_ARGS:[Ljava/lang/String;

.field public static final DEFAULT_SORT_ORDER:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/sec/ims/client/caps/ServiceContract;->DEFAULT_SELECTION:Ljava/lang/String;

    sput-object v0, Lcom/sec/ims/client/caps/ServiceContract;->DEFAULT_SELECTION_ARGS:[Ljava/lang/String;

    sput-object v0, Lcom/sec/ims/client/caps/ServiceContract;->DEFAULT_SORT_ORDER:Ljava/lang/String;

    return-void
.end method
