.class public final Lcom/android/server/pm/PackageForcePolicy;
.super Ljava/lang/Object;
.source "PackageForcePolicy.java"


# static fields
.field private static sDefaultWhiteList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sForceArmeabiWhiteList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sForceWhiteList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 9
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/pm/PackageForcePolicy;->sDefaultWhiteList:Ljava/util/List;

    .line 11
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/pm/PackageForcePolicy;->sForceWhiteList:Ljava/util/List;

    .line 12
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/pm/PackageForcePolicy;->sForceArmeabiWhiteList:Ljava/util/List;

    .line 17
    sget-object v0, Lcom/android/server/pm/PackageForcePolicy;->sDefaultWhiteList:Ljava/util/List;

    const-string v1, "hugh.android.app.zidian"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 20
    sget-object v0, Lcom/android/server/pm/PackageForcePolicy;->sDefaultWhiteList:Ljava/util/List;

    const-string v1, "com.bibill.basketball"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 21
    sget-object v0, Lcom/android/server/pm/PackageForcePolicy;->sDefaultWhiteList:Ljava/util/List;

    const-string v1, "com.xs.cn"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 22
    sget-object v0, Lcom/android/server/pm/PackageForcePolicy;->sDefaultWhiteList:Ljava/util/List;

    const-string v1, "com.lkgood.thepalacemuseumdaily"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 25
    sget-object v0, Lcom/android/server/pm/PackageForcePolicy;->sForceWhiteList:Ljava/util/List;

    const-string v1, "com.sina.news"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 26
    sget-object v0, Lcom/android/server/pm/PackageForcePolicy;->sForceWhiteList:Ljava/util/List;

    const-string v1, "com.husor.mizhe"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 27
    sget-object v0, Lcom/android/server/pm/PackageForcePolicy;->sForceWhiteList:Ljava/util/List;

    const-string v1, "com.husor.beibei"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 28
    sget-object v0, Lcom/android/server/pm/PackageForcePolicy;->sForceWhiteList:Ljava/util/List;

    const-string v1, "com.zuobao.xiaobao"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 29
    sget-object v0, Lcom/android/server/pm/PackageForcePolicy;->sForceWhiteList:Ljava/util/List;

    const-string v1, "com.android.shihuo"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 30
    sget-object v0, Lcom/android/server/pm/PackageForcePolicy;->sForceWhiteList:Ljava/util/List;

    const-string v1, "com.hyx.maizuo.main"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 31
    sget-object v0, Lcom/android/server/pm/PackageForcePolicy;->sForceWhiteList:Ljava/util/List;

    const-string v1, "com.cubic.choosecar"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 32
    sget-object v0, Lcom/android/server/pm/PackageForcePolicy;->sForceWhiteList:Ljava/util/List;

    const-string v1, "com.dou_pai.DouPai"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 33
    sget-object v0, Lcom/android/server/pm/PackageForcePolicy;->sForceWhiteList:Ljava/util/List;

    const-string v1, "com.wumii.android.mimi"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 34
    sget-object v0, Lcom/android/server/pm/PackageForcePolicy;->sForceWhiteList:Ljava/util/List;

    const-string v1, "fm.wawa.music"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 35
    sget-object v0, Lcom/android/server/pm/PackageForcePolicy;->sForceWhiteList:Ljava/util/List;

    const-string v1, "com.nice.main"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 36
    sget-object v0, Lcom/android/server/pm/PackageForcePolicy;->sForceWhiteList:Ljava/util/List;

    const-string v1, "com.jiuyan.infashion"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 37
    sget-object v0, Lcom/android/server/pm/PackageForcePolicy;->sForceWhiteList:Ljava/util/List;

    const-string v1, "com.yiwang"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 38
    sget-object v0, Lcom/android/server/pm/PackageForcePolicy;->sForceWhiteList:Ljava/util/List;

    const-string v1, "com.leduoworks.gpstoolbox"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 39
    sget-object v0, Lcom/android/server/pm/PackageForcePolicy;->sForceWhiteList:Ljava/util/List;

    const-string v1, "com.samsundot.talking"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 40
    sget-object v0, Lcom/android/server/pm/PackageForcePolicy;->sForceWhiteList:Ljava/util/List;

    const-string v1, "com.mmmono.mono"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 41
    sget-object v0, Lcom/android/server/pm/PackageForcePolicy;->sForceWhiteList:Ljava/util/List;

    const-string v1, "com.jiongji.andriod.card"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 42
    sget-object v0, Lcom/android/server/pm/PackageForcePolicy;->sForceWhiteList:Ljava/util/List;

    const-string v1, "com.yy.a.liveworld"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 43
    sget-object v0, Lcom/android/server/pm/PackageForcePolicy;->sForceWhiteList:Ljava/util/List;

    const-string v1, "org.zhiboba.sports"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 44
    sget-object v0, Lcom/android/server/pm/PackageForcePolicy;->sForceWhiteList:Ljava/util/List;

    const-string v1, "com.jd.jrapp"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 45
    sget-object v0, Lcom/android/server/pm/PackageForcePolicy;->sForceWhiteList:Ljava/util/List;

    const-string v1, "com.font"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 46
    sget-object v0, Lcom/android/server/pm/PackageForcePolicy;->sForceWhiteList:Ljava/util/List;

    const-string v1, "com.guokr.zhixing"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 47
    sget-object v0, Lcom/android/server/pm/PackageForcePolicy;->sForceWhiteList:Ljava/util/List;

    const-string v1, "com.ttxg.fruitday"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 48
    sget-object v0, Lcom/android/server/pm/PackageForcePolicy;->sForceWhiteList:Ljava/util/List;

    const-string v1, "com.chinaums.mpos"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 49
    sget-object v0, Lcom/android/server/pm/PackageForcePolicy;->sForceWhiteList:Ljava/util/List;

    const-string v1, "com.ganlan.poster"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 50
    sget-object v0, Lcom/android/server/pm/PackageForcePolicy;->sForceWhiteList:Ljava/util/List;

    const-string v1, "com.join.android.app.mgsim"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 51
    sget-object v0, Lcom/android/server/pm/PackageForcePolicy;->sForceWhiteList:Ljava/util/List;

    const-string v1, "com.nhzw.bingdu"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 52
    sget-object v0, Lcom/android/server/pm/PackageForcePolicy;->sForceWhiteList:Ljava/util/List;

    const-string v1, "com.vagoapp.autobot"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 53
    sget-object v0, Lcom/android/server/pm/PackageForcePolicy;->sForceWhiteList:Ljava/util/List;

    const-string v1, "com.woaika.kashen"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 56
    sget-object v0, Lcom/android/server/pm/PackageForcePolicy;->sForceArmeabiWhiteList:Ljava/util/List;

    const-string v1, "com.wowotuan"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 57
    sget-object v0, Lcom/android/server/pm/PackageForcePolicy;->sForceArmeabiWhiteList:Ljava/util/List;

    const-string v1, "in.huohua.Yuki"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 58
    sget-object v0, Lcom/android/server/pm/PackageForcePolicy;->sForceArmeabiWhiteList:Ljava/util/List;

    const-string v1, "com.kkg6.kuaishang"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 59
    sget-object v0, Lcom/android/server/pm/PackageForcePolicy;->sForceArmeabiWhiteList:Ljava/util/List;

    const-string v1, "com.thestore.main"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 60
    sget-object v0, Lcom/android/server/pm/PackageForcePolicy;->sForceArmeabiWhiteList:Ljava/util/List;

    const-string v1, "com.uroad.gst"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 61
    sget-object v0, Lcom/android/server/pm/PackageForcePolicy;->sForceArmeabiWhiteList:Ljava/util/List;

    const-string v1, "com.by.butter.camera"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 62
    sget-object v0, Lcom/android/server/pm/PackageForcePolicy;->sForceArmeabiWhiteList:Ljava/util/List;

    const-string v1, "com.zzzsoft.girlsecret"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 63
    sget-object v0, Lcom/android/server/pm/PackageForcePolicy;->sForceArmeabiWhiteList:Ljava/util/List;

    const-string v1, "com.feizan.android.snowball"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 64
    sget-object v0, Lcom/android/server/pm/PackageForcePolicy;->sForceArmeabiWhiteList:Ljava/util/List;

    const-string v1, "com.kascend.video"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 65
    sget-object v0, Lcom/android/server/pm/PackageForcePolicy;->sForceArmeabiWhiteList:Ljava/util/List;

    const-string v1, "com.hoperun.intelligenceportal"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 66
    sget-object v0, Lcom/android/server/pm/PackageForcePolicy;->sForceArmeabiWhiteList:Ljava/util/List;

    const-string v1, "com.huania.earthquakewarning"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 67
    sget-object v0, Lcom/android/server/pm/PackageForcePolicy;->sForceArmeabiWhiteList:Ljava/util/List;

    const-string v1, "com.dianxing.heloandroid"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 68
    sget-object v0, Lcom/android/server/pm/PackageForcePolicy;->sForceArmeabiWhiteList:Ljava/util/List;

    const-string v1, "com.gamersky"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 69
    sget-object v0, Lcom/android/server/pm/PackageForcePolicy;->sForceArmeabiWhiteList:Ljava/util/List;

    const-string v1, "com.shengshi"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 70
    sget-object v0, Lcom/android/server/pm/PackageForcePolicy;->sForceArmeabiWhiteList:Ljava/util/List;

    const-string v1, "com.huofar"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 71
    sget-object v0, Lcom/android/server/pm/PackageForcePolicy;->sForceArmeabiWhiteList:Ljava/util/List;

    const-string v1, "com.zdit.advert"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 72
    sget-object v0, Lcom/android/server/pm/PackageForcePolicy;->sForceArmeabiWhiteList:Ljava/util/List;

    const-string v1, "com.xingjiabi.shengsheng"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 74
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDefaultList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 81
    sget-object v0, Lcom/android/server/pm/PackageForcePolicy;->sDefaultWhiteList:Ljava/util/List;

    return-object v0
.end method

.method public static getForceArmeabiList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 118
    sget-object v0, Lcom/android/server/pm/PackageForcePolicy;->sForceArmeabiWhiteList:Ljava/util/List;

    return-object v0
.end method

.method public static getForceList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 100
    sget-object v0, Lcom/android/server/pm/PackageForcePolicy;->sForceWhiteList:Ljava/util/List;

    return-object v0
.end method

.method public static init()V
    .locals 0

    .prologue
    .line 137
    return-void
.end method

.method public static matchDefault(Ljava/lang/String;)Z
    .locals 1
    .param p0, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 91
    sget-object v0, Lcom/android/server/pm/PackageForcePolicy;->sDefaultWhiteList:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static matchForce(Ljava/lang/String;)Z
    .locals 1
    .param p0, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 110
    sget-object v0, Lcom/android/server/pm/PackageForcePolicy;->sForceWhiteList:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static matchForceArmeabi(Ljava/lang/String;)Z
    .locals 1
    .param p0, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 128
    sget-object v0, Lcom/android/server/pm/PackageForcePolicy;->sForceArmeabiWhiteList:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static onSystemReady()V
    .locals 0

    .prologue
    .line 145
    return-void
.end method
