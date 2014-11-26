.class public final Lcom/visionobjects/stylus/core/ItfReader$Error;
.super Ljava/lang/Object;
.source "ItfReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/visionobjects/stylus/core/ItfReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Error"
.end annotation


# static fields
.field public static final CannotLoadCertificate:I = 0xd

.field public static final CannotOpen:I = 0x1

.field public static final CannotRead:I = 0x2

.field public static final InvalidFloatValue:I = 0x7

.field public static final InvalidIntValue:I = 0x5

.field public static final InvalidUnitName:I = 0x9

.field public static final MissingCertificateName:I = 0xc

.field public static final MissingFloatValue:I = 0x6

.field public static final MissingIntValue:I = 0x4

.field public static final MissingResDir:I = 0xb

.field public static final MissingResName:I = 0xa

.field public static final MissingStringValue:I = 0x3

.field public static final MissingUnitName:I = 0x8

.field public static final MissingWordValue:I = 0xe

.field public static final NoError:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
