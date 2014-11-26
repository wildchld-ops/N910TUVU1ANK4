.class public final Lcom/visionobjects/stylus/core/InputMethod$Error;
.super Ljava/lang/Object;
.source "InputMethod.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/visionobjects/stylus/core/InputMethod;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Error"
.end annotation


# static fields
.field public static final CannotInitializeEngine:I = 0x2

.field public static final CannotLoadEngine:I = 0x1

.field public static final CannotLoadRes:I = 0x6

.field public static final CannotStartThread:I = 0xa

.field public static final MalformedInput:I = 0x9

.field public static final MissingAkRes:I = 0x7

.field public static final MissingCertificate:I = 0x3

.field public static final MissingConfig:I = 0x4

.field public static final NoError:I = 0x0

.field public static final UnsuitableAkRes:I = 0x8

.field public static final UnsuitableConfig:I = 0x5


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
