.class public final Lcom/mediatek/telecom/ConferenceXmlData$User;
.super Ljava/lang/Object;
.source "ConferenceXmlData.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/telecom/ConferenceXmlData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "User"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/mediatek/telecom/ConferenceXmlData$User;",
            ">;"
        }
    .end annotation
.end field

.field public static final STATUS_CONNECTED:Ljava/lang/String; = "connected"

.field public static final STATUS_DISCONNECTED:Ljava/lang/String; = "disconnected"

.field public static final STATUS_ON_HOLD:Ljava/lang/String; = "on-hold"


# instance fields
.field private mAddress:Ljava/lang/String;

.field private mIndex:Ljava/lang/String;

.field private mStatus:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 104
    new-instance v0, Lcom/mediatek/telecom/ConferenceXmlData$User$1;

    invoke-direct {v0}, Lcom/mediatek/telecom/ConferenceXmlData$User$1;-><init>()V

    sput-object v0, Lcom/mediatek/telecom/ConferenceXmlData$User;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "status"    # Ljava/lang/String;
    .param p3, "index"    # Ljava/lang/String;

    .prologue
    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    iput-object p1, p0, Lcom/mediatek/telecom/ConferenceXmlData$User;->mAddress:Ljava/lang/String;

    .line 100
    iput-object p2, p0, Lcom/mediatek/telecom/ConferenceXmlData$User;->mStatus:Ljava/lang/String;

    .line 101
    iput-object p3, p0, Lcom/mediatek/telecom/ConferenceXmlData$User;->mIndex:Ljava/lang/String;

    .line 102
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 128
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 145
    const/4 v0, 0x0

    .line 146
    .local v0, "result":Z
    instance-of v2, p1, Lcom/mediatek/telecom/ConferenceXmlData$User;

    if-eqz v2, :cond_0

    move-object v1, p1

    .line 147
    check-cast v1, Lcom/mediatek/telecom/ConferenceXmlData$User;

    .line 148
    .local v1, "user":Lcom/mediatek/telecom/ConferenceXmlData$User;
    iget-object v2, p0, Lcom/mediatek/telecom/ConferenceXmlData$User;->mAddress:Ljava/lang/String;

    iget-object v3, v1, Lcom/mediatek/telecom/ConferenceXmlData$User;->mAddress:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/mediatek/telecom/ConferenceXmlData$User;->mStatus:Ljava/lang/String;

    iget-object v3, v1, Lcom/mediatek/telecom/ConferenceXmlData$User;->mStatus:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/mediatek/telecom/ConferenceXmlData$User;->mIndex:Ljava/lang/String;

    iget-object v3, v1, Lcom/mediatek/telecom/ConferenceXmlData$User;->mIndex:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v0, 0x1

    .line 152
    .end local v1    # "user":Lcom/mediatek/telecom/ConferenceXmlData$User;
    :cond_0
    :goto_0
    return v0

    .line 148
    .restart local v1    # "user":Lcom/mediatek/telecom/ConferenceXmlData$User;
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/mediatek/telecom/ConferenceXmlData$User;->mAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getIndex()Ljava/lang/String;
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/mediatek/telecom/ConferenceXmlData$User;->mIndex:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()Ljava/lang/String;
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/mediatek/telecom/ConferenceXmlData$User;->mStatus:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 157
    iget-object v0, p0, Lcom/mediatek/telecom/ConferenceXmlData$User;->mAddress:Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    iget-object v1, p0, Lcom/mediatek/telecom/ConferenceXmlData$User;->mStatus:Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/mediatek/telecom/ConferenceXmlData$User;->mIndex:Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 163
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "mAddress: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/telecom/ConferenceXmlData$User;->mAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "; mStatus: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/telecom/ConferenceXmlData$User;->mStatus:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "; mIndex: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/telecom/ConferenceXmlData$User;->mIndex:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "! "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 120
    iget-object v0, p0, Lcom/mediatek/telecom/ConferenceXmlData$User;->mAddress:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 121
    iget-object v0, p0, Lcom/mediatek/telecom/ConferenceXmlData$User;->mStatus:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 122
    iget-object v0, p0, Lcom/mediatek/telecom/ConferenceXmlData$User;->mIndex:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 123
    return-void
.end method
