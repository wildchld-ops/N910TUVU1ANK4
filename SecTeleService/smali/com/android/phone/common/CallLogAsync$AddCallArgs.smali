.class public Lcom/android/phone/common/CallLogAsync$AddCallArgs;
.super Ljava/lang/Object;
.source "CallLogAsync.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/common/CallLogAsync;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AddCallArgs"
.end annotation


# instance fields
.field public final SIMId:I

.field public final callType:I

.field public final ci:Lcom/android/internal/telephony/CallerInfo;

.field public final context:Landroid/content/Context;

.field public final dbUri:Landroid/net/Uri;

.field public final dormantset:I

.field public final durationInSec:I

.field public final number:Ljava/lang/String;

.field public final presentation:I

.field public final remindme:I

.field public serviceType:I

.field public final sharedFilePath:Ljava/lang/String;

.field public final simnum:I

.field public final timestamp:J

.field public values:Landroid/content/ContentValues;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/telephony/CallerInfo;Ljava/lang/String;IIIJJLandroid/net/Uri;)V
    .locals 4
    .param p1    # Landroid/content/Context;
    .param p2    # Lcom/android/internal/telephony/CallerInfo;
    .param p3    # Ljava/lang/String;
    .param p4    # I
    .param p5    # I
    .param p6    # I
    .param p7    # J
    .param p9    # J
    .param p11    # Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->ci:Lcom/android/internal/telephony/CallerInfo;

    iput-object p3, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->number:Ljava/lang/String;

    iput p4, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->presentation:I

    iput p5, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->callType:I

    iput p6, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->simnum:I

    iput-wide p7, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->timestamp:J

    const-wide/16 v0, 0x3e8

    div-long v0, p9, v0

    long-to-int v0, v0

    iput v0, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->durationInSec:I

    iput-object p11, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->dbUri:Landroid/net/Uri;

    iput-object v3, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->values:Landroid/content/ContentValues;

    iput-object v3, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->sharedFilePath:Ljava/lang/String;

    iput v2, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->remindme:I

    iput v2, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->dormantset:I

    iput p6, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->SIMId:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/telephony/CallerInfo;Ljava/lang/String;IIJJ)V
    .locals 4
    .param p1    # Landroid/content/Context;
    .param p2    # Lcom/android/internal/telephony/CallerInfo;
    .param p3    # Ljava/lang/String;
    .param p4    # I
    .param p5    # I
    .param p6    # J
    .param p8    # J

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->ci:Lcom/android/internal/telephony/CallerInfo;

    iput-object p3, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->number:Ljava/lang/String;

    iput p4, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->presentation:I

    iput p5, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->callType:I

    iput-wide p6, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->timestamp:J

    const-wide/16 v0, 0x3e8

    div-long v0, p8, v0

    long-to-int v0, v0

    iput v0, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->durationInSec:I

    iput-object v3, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->dbUri:Landroid/net/Uri;

    iput-object v3, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->values:Landroid/content/ContentValues;

    iput-object v3, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->sharedFilePath:Ljava/lang/String;

    iput v2, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->remindme:I

    iput v2, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->dormantset:I

    iput v2, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->simnum:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->SIMId:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/telephony/CallerInfo;Ljava/lang/String;IIJJILandroid/net/Uri;)V
    .locals 4
    .param p1    # Landroid/content/Context;
    .param p2    # Lcom/android/internal/telephony/CallerInfo;
    .param p3    # Ljava/lang/String;
    .param p4    # I
    .param p5    # I
    .param p6    # J
    .param p8    # J
    .param p10    # I
    .param p11    # Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->ci:Lcom/android/internal/telephony/CallerInfo;

    iput-object p3, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->number:Ljava/lang/String;

    iput p4, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->presentation:I

    iput p5, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->callType:I

    iput-wide p6, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->timestamp:J

    const-wide/16 v0, 0x3e8

    div-long v0, p8, v0

    long-to-int v0, v0

    iput v0, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->durationInSec:I

    iput-object p11, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->dbUri:Landroid/net/Uri;

    iput-object v3, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->values:Landroid/content/ContentValues;

    iput-object v3, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->sharedFilePath:Ljava/lang/String;

    iput v2, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->remindme:I

    iput v2, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->dormantset:I

    iput v2, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->simnum:I

    iput p10, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->SIMId:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/telephony/CallerInfo;Ljava/lang/String;IIJJLandroid/content/ContentValues;Landroid/net/Uri;)V
    .locals 3
    .param p1    # Landroid/content/Context;
    .param p2    # Lcom/android/internal/telephony/CallerInfo;
    .param p3    # Ljava/lang/String;
    .param p4    # I
    .param p5    # I
    .param p6    # J
    .param p8    # J
    .param p10    # Landroid/content/ContentValues;
    .param p11    # Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->ci:Lcom/android/internal/telephony/CallerInfo;

    iput-object p3, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->number:Ljava/lang/String;

    iput p4, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->presentation:I

    iput p5, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->callType:I

    iput-wide p6, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->timestamp:J

    const-wide/16 v0, 0x3e8

    div-long v0, p8, v0

    long-to-int v0, v0

    iput v0, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->durationInSec:I

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    iput-object v0, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->values:Landroid/content/ContentValues;

    iget-object v0, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->values:Landroid/content/ContentValues;

    invoke-virtual {v0, p10}, Landroid/content/ContentValues;->putAll(Landroid/content/ContentValues;)V

    iput-object p11, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->dbUri:Landroid/net/Uri;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->sharedFilePath:Ljava/lang/String;

    iput v2, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->remindme:I

    iput v2, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->dormantset:I

    iput v2, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->simnum:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->SIMId:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/telephony/CallerInfo;Ljava/lang/String;IIJJLandroid/content/ContentValues;Landroid/net/Uri;I)V
    .locals 3
    .param p1    # Landroid/content/Context;
    .param p2    # Lcom/android/internal/telephony/CallerInfo;
    .param p3    # Ljava/lang/String;
    .param p4    # I
    .param p5    # I
    .param p6    # J
    .param p8    # J
    .param p10    # Landroid/content/ContentValues;
    .param p11    # Landroid/net/Uri;
    .param p12    # I

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->ci:Lcom/android/internal/telephony/CallerInfo;

    iput-object p3, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->number:Ljava/lang/String;

    iput p4, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->presentation:I

    iput p5, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->callType:I

    iput-wide p6, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->timestamp:J

    const-wide/16 v0, 0x3e8

    div-long v0, p8, v0

    long-to-int v0, v0

    iput v0, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->durationInSec:I

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    iput-object v0, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->values:Landroid/content/ContentValues;

    iget-object v0, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->values:Landroid/content/ContentValues;

    invoke-virtual {v0, p10}, Landroid/content/ContentValues;->putAll(Landroid/content/ContentValues;)V

    iput-object p11, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->dbUri:Landroid/net/Uri;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->sharedFilePath:Ljava/lang/String;

    iput v2, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->remindme:I

    iput v2, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->dormantset:I

    iput v2, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->simnum:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->SIMId:I

    iput p12, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->serviceType:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/telephony/CallerInfo;Ljava/lang/String;IIJJLandroid/net/Uri;)V
    .locals 4
    .param p1    # Landroid/content/Context;
    .param p2    # Lcom/android/internal/telephony/CallerInfo;
    .param p3    # Ljava/lang/String;
    .param p4    # I
    .param p5    # I
    .param p6    # J
    .param p8    # J
    .param p10    # Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->ci:Lcom/android/internal/telephony/CallerInfo;

    iput-object p3, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->number:Ljava/lang/String;

    iput p4, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->presentation:I

    iput p5, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->callType:I

    iput-wide p6, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->timestamp:J

    const-wide/16 v0, 0x3e8

    div-long v0, p8, v0

    long-to-int v0, v0

    iput v0, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->durationInSec:I

    iput-object p10, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->dbUri:Landroid/net/Uri;

    iput-object v3, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->values:Landroid/content/ContentValues;

    iput-object v3, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->sharedFilePath:Ljava/lang/String;

    iput v2, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->remindme:I

    iput v2, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->dormantset:I

    iput v2, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->simnum:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->SIMId:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/telephony/CallerInfo;Ljava/lang/String;IIJJLandroid/net/Uri;I)V
    .locals 0
    .param p1    # Landroid/content/Context;
    .param p2    # Lcom/android/internal/telephony/CallerInfo;
    .param p3    # Ljava/lang/String;
    .param p4    # I
    .param p5    # I
    .param p6    # J
    .param p8    # J
    .param p10    # Landroid/net/Uri;
    .param p11    # I

    invoke-direct/range {p0 .. p10}, Lcom/android/phone/common/CallLogAsync$AddCallArgs;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CallerInfo;Ljava/lang/String;IIJJLandroid/net/Uri;)V

    iput p11, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->serviceType:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/telephony/CallerInfo;Ljava/lang/String;IIJJLandroid/net/Uri;II)V
    .locals 3
    .param p1    # Landroid/content/Context;
    .param p2    # Lcom/android/internal/telephony/CallerInfo;
    .param p3    # Ljava/lang/String;
    .param p4    # I
    .param p5    # I
    .param p6    # J
    .param p8    # J
    .param p10    # Landroid/net/Uri;
    .param p11    # I
    .param p12    # I

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->ci:Lcom/android/internal/telephony/CallerInfo;

    iput-object p3, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->number:Ljava/lang/String;

    iput p4, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->presentation:I

    iput p5, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->callType:I

    iput-wide p6, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->timestamp:J

    const-wide/16 v0, 0x3e8

    div-long v0, p8, v0

    long-to-int v0, v0

    iput v0, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->durationInSec:I

    iput-object p10, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->dbUri:Landroid/net/Uri;

    iput-object v2, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->values:Landroid/content/ContentValues;

    iput-object v2, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->sharedFilePath:Ljava/lang/String;

    iput p11, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->remindme:I

    iput p12, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->dormantset:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->simnum:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->SIMId:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/telephony/CallerInfo;Ljava/lang/String;IIJJLandroid/net/Uri;III)V
    .locals 2
    .param p1    # Landroid/content/Context;
    .param p2    # Lcom/android/internal/telephony/CallerInfo;
    .param p3    # Ljava/lang/String;
    .param p4    # I
    .param p5    # I
    .param p6    # J
    .param p8    # J
    .param p10    # Landroid/net/Uri;
    .param p11    # I
    .param p12    # I
    .param p13    # I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->ci:Lcom/android/internal/telephony/CallerInfo;

    iput-object p3, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->number:Ljava/lang/String;

    iput p4, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->presentation:I

    iput p5, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->callType:I

    iput-wide p6, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->timestamp:J

    const-wide/16 v0, 0x3e8

    div-long v0, p8, v0

    long-to-int v0, v0

    iput v0, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->durationInSec:I

    iput-object p10, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->dbUri:Landroid/net/Uri;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->values:Landroid/content/ContentValues;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->sharedFilePath:Ljava/lang/String;

    iput p11, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->remindme:I

    iput p12, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->dormantset:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->simnum:I

    iput p13, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->SIMId:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/telephony/CallerInfo;Ljava/lang/String;IIJJLandroid/net/Uri;IILandroid/content/ContentValues;)V
    .locals 1
    .param p1    # Landroid/content/Context;
    .param p2    # Lcom/android/internal/telephony/CallerInfo;
    .param p3    # Ljava/lang/String;
    .param p4    # I
    .param p5    # I
    .param p6    # J
    .param p8    # J
    .param p10    # Landroid/net/Uri;
    .param p11    # I
    .param p12    # I
    .param p13    # Landroid/content/ContentValues;

    invoke-direct/range {p0 .. p12}, Lcom/android/phone/common/CallLogAsync$AddCallArgs;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CallerInfo;Ljava/lang/String;IIJJLandroid/net/Uri;II)V

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    iput-object v0, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->values:Landroid/content/ContentValues;

    iget-object v0, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->values:Landroid/content/ContentValues;

    invoke-virtual {v0, p13}, Landroid/content/ContentValues;->putAll(Landroid/content/ContentValues;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/telephony/CallerInfo;Ljava/lang/String;IIJJLandroid/net/Uri;Ljava/lang/String;)V
    .locals 3
    .param p1    # Landroid/content/Context;
    .param p2    # Lcom/android/internal/telephony/CallerInfo;
    .param p3    # Ljava/lang/String;
    .param p4    # I
    .param p5    # I
    .param p6    # J
    .param p8    # J
    .param p10    # Landroid/net/Uri;
    .param p11    # Ljava/lang/String;

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->ci:Lcom/android/internal/telephony/CallerInfo;

    iput-object p3, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->number:Ljava/lang/String;

    iput p4, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->presentation:I

    iput p5, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->callType:I

    iput-wide p6, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->timestamp:J

    const-wide/16 v0, 0x3e8

    div-long v0, p8, v0

    long-to-int v0, v0

    iput v0, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->durationInSec:I

    iput-object p10, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->dbUri:Landroid/net/Uri;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->values:Landroid/content/ContentValues;

    iput-object p11, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->sharedFilePath:Ljava/lang/String;

    iput v2, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->remindme:I

    iput v2, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->dormantset:I

    iput v2, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->simnum:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->SIMId:I

    return-void
.end method
