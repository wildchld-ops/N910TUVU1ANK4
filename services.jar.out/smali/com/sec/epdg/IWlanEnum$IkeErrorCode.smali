.class public Lcom/sec/epdg/IWlanEnum$IkeErrorCode;
.super Ljava/lang/Object;
.source "IWlanEnum.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/epdg/IWlanEnum;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "IkeErrorCode"
.end annotation


# static fields
.field public static final AUTHENTICATION_FAILED:I = 0x18

.field public static final CHILD_SA_NOT_FOUND:I = 0x2c

.field public static final FAILED_CP_REQUIRED:I = 0x25

.field public static final INTERNAL_ADDRESS_FAILURE:I = 0x24

.field public static final INVALID_IKE_SPI:I = 0x4

.field public static final INVALID_KE_PAYLOAD:I = 0x11

.field public static final INVALID_MAJOR_VERSION:I = 0x5

.field public static final INVALID_MESSAGE_ID:I = 0x9

.field public static final INVALID_SELECTORS:I = 0x27

.field public static final INVALID_SPI:I = 0xb

.field public static final INVALID_SYNTAX:I = 0x7

.field public static final NO_ADDITIONAL_SAS:I = 0x23

.field public static final NO_PROPOSAL_CHOSEN:I = 0xe

.field public static final SINGLE_PAIR_REQUIRED:I = 0x22

.field public static final TEMPORARY_FAILURE:I = 0x2b

.field public static final TS_UNACCEPTABLE:I = 0x26

.field public static final UNSUPPORTED_CRITICAL_PAYLOAD:I = 0x1


# instance fields
.field final synthetic this$0:Lcom/sec/epdg/IWlanEnum;


# direct methods
.method public constructor <init>(Lcom/sec/epdg/IWlanEnum;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/epdg/IWlanEnum$IkeErrorCode;->this$0:Lcom/sec/epdg/IWlanEnum;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
