.class public Landroid/app/NameInfo;
.super Ljava/lang/Object;
.source "NameInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/app/NameInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public homeNumber:Ljava/lang/String;

.field public name:Ljava/lang/String;

.field public number:Ljava/lang/String;

.field public workNumber:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 59
    new-instance v0, Landroid/app/NameInfo$1;

    invoke-direct {v0}, Landroid/app/NameInfo$1;-><init>()V

    sput-object v0, Landroid/app/NameInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    const-string v0, ""

    iput-object v0, p0, Landroid/app/NameInfo;->name:Ljava/lang/String;

    .line 12
    const-string v0, ""

    iput-object v0, p0, Landroid/app/NameInfo;->number:Ljava/lang/String;

    .line 13
    const-string v0, ""

    iput-object v0, p0, Landroid/app/NameInfo;->workNumber:Ljava/lang/String;

    .line 14
    const-string v0, ""

    iput-object v0, p0, Landroid/app/NameInfo;->homeNumber:Ljava/lang/String;

    .line 18
    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    const-string v0, ""

    iput-object v0, p0, Landroid/app/NameInfo;->name:Ljava/lang/String;

    .line 12
    const-string v0, ""

    iput-object v0, p0, Landroid/app/NameInfo;->number:Ljava/lang/String;

    .line 13
    const-string v0, ""

    iput-object v0, p0, Landroid/app/NameInfo;->workNumber:Ljava/lang/String;

    .line 14
    const-string v0, ""

    iput-object v0, p0, Landroid/app/NameInfo;->homeNumber:Ljava/lang/String;

    .line 37
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/NameInfo;->name:Ljava/lang/String;

    .line 38
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/NameInfo;->number:Ljava/lang/String;

    .line 39
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/NameInfo;->workNumber:Ljava/lang/String;

    .line 40
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/NameInfo;->homeNumber:Ljava/lang/String;

    .line 42
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "myname"    # Ljava/lang/String;
    .param p2, "mynumber"    # Ljava/lang/String;
    .param p3, "myworkNumber"    # Ljava/lang/String;
    .param p4, "myhomeNumber"    # Ljava/lang/String;

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    const-string v0, ""

    iput-object v0, p0, Landroid/app/NameInfo;->name:Ljava/lang/String;

    .line 12
    const-string v0, ""

    iput-object v0, p0, Landroid/app/NameInfo;->number:Ljava/lang/String;

    .line 13
    const-string v0, ""

    iput-object v0, p0, Landroid/app/NameInfo;->workNumber:Ljava/lang/String;

    .line 14
    const-string v0, ""

    iput-object v0, p0, Landroid/app/NameInfo;->homeNumber:Ljava/lang/String;

    .line 22
    if-eqz p1, :cond_0

    .line 23
    iput-object p1, p0, Landroid/app/NameInfo;->name:Ljava/lang/String;

    .line 25
    :cond_0
    if-eqz p2, :cond_1

    .line 26
    iput-object p2, p0, Landroid/app/NameInfo;->number:Ljava/lang/String;

    .line 28
    :cond_1
    if-eqz p3, :cond_2

    .line 29
    iput-object p3, p0, Landroid/app/NameInfo;->workNumber:Ljava/lang/String;

    .line 31
    :cond_2
    if-eqz p4, :cond_3

    .line 32
    iput-object p4, p0, Landroid/app/NameInfo;->homeNumber:Ljava/lang/String;

    .line 34
    :cond_3
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 47
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 52
    iget-object v0, p0, Landroid/app/NameInfo;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 53
    iget-object v0, p0, Landroid/app/NameInfo;->number:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 54
    iget-object v0, p0, Landroid/app/NameInfo;->workNumber:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 55
    iget-object v0, p0, Landroid/app/NameInfo;->homeNumber:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 57
    return-void
.end method
