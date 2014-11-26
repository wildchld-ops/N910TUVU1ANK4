.class Lcom/android/keyguard/sec/CmaWeatherImageArchive;
.super Lcom/android/keyguard/sec/AbstractWeatherImageArchive;
.source "CmaWeatherImageArchive.java"


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/sec/AbstractWeatherImageArchive;-><init>()V

    return-void
.end method


# virtual methods
.method public getImage(I)I
    .locals 4
    .param p1    # I

    const-string v1, "CmaWeatherImageArchive"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "index="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    packed-switch p1, :pswitch_data_0

    const v0, 0x7f02029a

    :goto_0
    return v0

    :pswitch_0
    const v0, 0x7f020299

    goto :goto_0

    :pswitch_1
    const v0, 0x7f02029a

    goto :goto_0

    :pswitch_2
    const v0, 0x7f02029b

    goto :goto_0

    :pswitch_3
    const v0, 0x7f02029c

    goto :goto_0

    :pswitch_4
    const v0, 0x7f02029d

    goto :goto_0

    :pswitch_5
    const v0, 0x7f02029e

    goto :goto_0

    :pswitch_6
    const v0, 0x7f02029f

    goto :goto_0

    :pswitch_7
    const v0, 0x7f0202a0

    goto :goto_0

    :pswitch_8
    const v0, 0x7f0202a1

    goto :goto_0

    :pswitch_9
    const v0, 0x7f0202a2

    goto :goto_0

    :pswitch_a
    const v0, 0x7f0202a3

    goto :goto_0

    :pswitch_b
    const v0, 0x7f0202a4

    goto :goto_0

    :pswitch_c
    const v0, 0x7f0202a5

    goto :goto_0

    :pswitch_d
    const v0, 0x7f0202a6

    goto :goto_0

    :pswitch_e
    const v0, 0x7f0202a7

    goto :goto_0

    :pswitch_f
    const v0, 0x7f0202a8

    goto :goto_0

    :pswitch_10
    const v0, 0x7f0202a9

    goto :goto_0

    :pswitch_11
    const v0, 0x7f0202aa

    goto :goto_0

    :pswitch_12
    const v0, 0x7f0202ab

    goto :goto_0

    :pswitch_13
    const v0, 0x7f0202ac

    goto :goto_0

    :pswitch_14
    const v0, 0x7f0202ad

    goto :goto_0

    :pswitch_15
    const v0, 0x7f0202ae

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
    .end packed-switch
.end method
