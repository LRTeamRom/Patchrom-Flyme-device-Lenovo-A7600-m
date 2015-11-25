.class public Landroid/app/FontThemeManager;
.super Ljava/lang/Object;
.source "FontThemeManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/FontThemeManager$1;,
        Landroid/app/FontThemeManager$FontListener;
    }
.end annotation


# static fields
.field private static FontManagers:Ljava/util/ArrayList; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/FontThemeManager;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "FontThemeManager"

.field private static use_default_font_type:I


# instance fields
.field public FontListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/FontThemeManager$FontListener;",
            ">;"
        }
    .end annotation
.end field

.field public pid:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const/4 v0, 0x2

    sput v0, Landroid/app/FontThemeManager;->use_default_font_type:I

    .line 266
    const/4 v0, 0x0

    sput-object v0, Landroid/app/FontThemeManager;->FontManagers:Ljava/util/ArrayList;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const/4 v0, -0x1

    iput v0, p0, Landroid/app/FontThemeManager;->pid:I

    .line 25
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/FontThemeManager;->FontListeners:Ljava/util/ArrayList;

    .line 29
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    iput v0, p0, Landroid/app/FontThemeManager;->pid:I

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/FontThemeManager;->FontListeners:Ljava/util/ArrayList;

    .line 31
    return-void
.end method

.method public static changeTextFont(Landroid/content/Context;)V
    .locals 2
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 149
    invoke-static {p0, v1}, Landroid/app/FontThemeManager;->createThemeFont(Landroid/content/Context;I)Landroid/graphics/Typeface;

    move-result-object v0

    .line 150
    .local v0, "tf":Landroid/graphics/Typeface;
    invoke-static {v0, v1}, Landroid/widget/TextView;->changeThemeFont(Landroid/graphics/Typeface;I)V

    .line 151
    return-void
.end method

.method private static createThemeFont(Landroid/content/Context;I)Landroid/graphics/Typeface;
    .locals 8
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "typefacetype"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v7, 0x0

    .line 154
    if-eqz p0, :cond_3

    .line 155
    const/4 v2, 0x0

    .line 157
    .local v2, "tf":Landroid/graphics/Typeface;
    invoke-static {p0, p1}, Landroid/widget/TextView;->getcurFontPath(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    .line 158
    .local v0, "curfontpath":Ljava/lang/String;
    const-string v4, "FontThemeManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "FontThemeManager createThemeFont typefacetype="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", curfontpath="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    invoke-static {}, Landroid/content/res/Configuration;->getDefaultFontPath()Ljava/lang/String;

    move-result-object v1

    .line 160
    .local v1, "default_File_font_path":Ljava/lang/String;
    sput p1, Landroid/app/FontThemeManager;->use_default_font_type:I

    .line 161
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, ""

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 162
    :cond_0
    sput v7, Landroid/app/FontThemeManager;->use_default_font_type:I

    .line 164
    :cond_1
    sget v4, Landroid/app/FontThemeManager;->use_default_font_type:I

    if-eqz v4, :cond_2

    .line 166
    :try_start_0
    invoke-static {v0, p1}, Landroid/graphics/Typeface;->createThemeFont(Ljava/lang/String;I)Landroid/graphics/Typeface;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 178
    .end local v0    # "curfontpath":Ljava/lang/String;
    .end local v1    # "default_File_font_path":Ljava/lang/String;
    .end local v2    # "tf":Landroid/graphics/Typeface;
    :goto_0
    return-object v2

    .line 170
    .restart local v0    # "curfontpath":Ljava/lang/String;
    .restart local v1    # "default_File_font_path":Ljava/lang/String;
    .restart local v2    # "tf":Landroid/graphics/Typeface;
    :cond_2
    invoke-static {}, Landroid/widget/TextView;->freeThemeFont()V

    .line 171
    sput-object v3, Landroid/graphics/Typeface;->THEME_FONT:Landroid/graphics/Typeface;

    .line 172
    invoke-static {v1}, Landroid/graphics/Typeface;->updateThemeFontPath(Ljava/lang/String;)V

    .line 173
    sget-object v3, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-static {v3, v7}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v2

    goto :goto_0

    .end local v0    # "curfontpath":Ljava/lang/String;
    .end local v1    # "default_File_font_path":Ljava/lang/String;
    .end local v2    # "tf":Landroid/graphics/Typeface;
    :cond_3
    move-object v2, v3

    .line 178
    goto :goto_0

    .line 167
    .restart local v0    # "curfontpath":Ljava/lang/String;
    .restart local v1    # "default_File_font_path":Ljava/lang/String;
    .restart local v2    # "tf":Landroid/graphics/Typeface;
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method public static createThemeFont(Z)Landroid/graphics/Typeface;
    .locals 5
    .param p0, "iscts"    # Z

    .prologue
    .line 183
    if-nez p0, :cond_3

    .line 184
    const/4 v2, 0x0

    .line 185
    .local v2, "tf":Landroid/graphics/Typeface;
    invoke-static {}, Landroid/content/res/Configuration;->getFontPath()Ljava/lang/String;

    move-result-object v0

    .line 186
    .local v0, "curfontpath":Ljava/lang/String;
    invoke-static {}, Landroid/content/res/Configuration;->getDefaultFontPath()Ljava/lang/String;

    move-result-object v1

    .line 187
    .local v1, "deffontpath":Ljava/lang/String;
    const/4 v3, 0x0

    .line 190
    .local v3, "use_default_font":Z
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, ""

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 191
    :cond_0
    const/4 v3, 0x1

    .line 193
    :cond_1
    if-nez v3, :cond_2

    .line 195
    :try_start_0
    invoke-static {v0}, Landroid/graphics/Typeface;->createThemeFont(Ljava/lang/String;)Landroid/graphics/Typeface;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 202
    .end local v0    # "curfontpath":Ljava/lang/String;
    .end local v1    # "deffontpath":Ljava/lang/String;
    .end local v2    # "tf":Landroid/graphics/Typeface;
    .end local v3    # "use_default_font":Z
    :cond_2
    :goto_0
    return-object v2

    :cond_3
    const/4 v2, 0x0

    goto :goto_0

    .line 196
    .restart local v0    # "curfontpath":Ljava/lang/String;
    .restart local v1    # "deffontpath":Ljava/lang/String;
    .restart local v2    # "tf":Landroid/graphics/Typeface;
    .restart local v3    # "use_default_font":Z
    :catch_0
    move-exception v4

    goto :goto_0
.end method

.method public static getInstance()Landroid/app/FontThemeManager;
    .locals 4

    .prologue
    .line 34
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    .line 35
    .local v2, "pid":I
    sget-object v3, Landroid/app/FontThemeManager;->FontManagers:Ljava/util/ArrayList;

    if-eqz v3, :cond_1

    sget-object v3, Landroid/app/FontThemeManager;->FontManagers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 36
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v3, Landroid/app/FontThemeManager;->FontManagers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 37
    sget-object v3, Landroid/app/FontThemeManager;->FontManagers:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/FontThemeManager;

    .line 38
    .local v1, "item":Landroid/app/FontThemeManager;
    if-eqz v1, :cond_0

    iget v3, v1, Landroid/app/FontThemeManager;->pid:I

    if-ne v3, v2, :cond_0

    .line 43
    .end local v0    # "i":I
    .end local v1    # "item":Landroid/app/FontThemeManager;
    :goto_1
    return-object v1

    .line 36
    .restart local v0    # "i":I
    .restart local v1    # "item":Landroid/app/FontThemeManager;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 43
    .end local v0    # "i":I
    .end local v1    # "item":Landroid/app/FontThemeManager;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private static getTextViewFaceType(Landroid/widget/TextView;)I
    .locals 1
    .param p0, "child"    # Landroid/widget/TextView;

    .prologue
    .line 89
    invoke-virtual {p0}, Landroid/widget/TextView;->ismEditorNull()Z

    move-result v0

    if-nez v0, :cond_0

    .line 90
    const/4 v0, 0x1

    .line 92
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getTypefaceType()I

    move-result v0

    goto :goto_0
.end method

.method public static registerFontListener(Landroid/widget/TextView;Landroid/widget/TextView$TextFontListener;)V
    .locals 8
    .param p0, "tx"    # Landroid/widget/TextView;
    .param p1, "listener"    # Landroid/widget/TextView$TextFontListener;

    .prologue
    .line 47
    if-eqz p1, :cond_0

    if-eqz p0, :cond_0

    .line 48
    invoke-virtual {p0}, Landroid/widget/TextView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v2

    .line 49
    .local v2, "impl":Landroid/view/ViewRootImpl;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/view/ViewRootImpl;->isSameThread()Z

    move-result v5

    if-nez v5, :cond_1

    .line 86
    .end local v2    # "impl":Landroid/view/ViewRootImpl;
    :cond_0
    :goto_0
    return-void

    .line 52
    .restart local v2    # "impl":Landroid/view/ViewRootImpl;
    :cond_1
    const/4 v0, 0x0

    .line 53
    .local v0, "add_Instance":Z
    invoke-static {}, Landroid/app/FontThemeManager;->getInstance()Landroid/app/FontThemeManager;

    move-result-object v1

    .line 54
    .local v1, "cur":Landroid/app/FontThemeManager;
    invoke-static {}, Landroid/app/FontThemeManager;->getInstance()Landroid/app/FontThemeManager;

    move-result-object v5

    if-nez v5, :cond_3

    .line 55
    sget-object v5, Landroid/app/FontThemeManager;->FontManagers:Ljava/util/ArrayList;

    if-nez v5, :cond_2

    .line 56
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    sput-object v5, Landroid/app/FontThemeManager;->FontManagers:Ljava/util/ArrayList;

    .line 58
    :cond_2
    const/4 v0, 0x1

    .line 59
    new-instance v1, Landroid/app/FontThemeManager;

    .end local v1    # "cur":Landroid/app/FontThemeManager;
    invoke-direct {v1}, Landroid/app/FontThemeManager;-><init>()V

    .line 62
    .restart local v1    # "cur":Landroid/app/FontThemeManager;
    :cond_3
    if-eqz v1, :cond_0

    iget-object v5, v1, Landroid/app/FontThemeManager;->FontListeners:Ljava/util/ArrayList;

    if-eqz v5, :cond_0

    iget-boolean v5, p1, Landroid/widget/TextView$TextFontListener;->hasRegister:Z

    if-nez v5, :cond_0

    .line 63
    const/4 v5, 0x1

    iput-boolean v5, p1, Landroid/widget/TextView$TextFontListener;->hasRegister:Z

    .line 65
    iget-object v5, v1, Landroid/app/FontThemeManager;->FontListeners:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/16 v6, 0x1f4

    if-le v5, v6, :cond_4

    .line 66
    const-string v5, "FontThemeManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "FontThemeManager registerFontListener FontListeners size to large and free its size="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v1, Landroid/app/FontThemeManager;->FontListeners:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    iget-object v5, v1, Landroid/app/FontThemeManager;->FontListeners:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 70
    :cond_4
    new-instance v3, Landroid/app/FontThemeManager$FontListener;

    const/4 v5, 0x0

    invoke-direct {v3, v5}, Landroid/app/FontThemeManager$FontListener;-><init>(Landroid/app/FontThemeManager$1;)V

    .line 71
    .local v3, "lis":Landroid/app/FontThemeManager$FontListener;
    new-instance v5, Ljava/lang/ref/SoftReference;

    invoke-direct {v5, p0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v5, v3, Landroid/app/FontThemeManager$FontListener;->t:Ljava/lang/ref/SoftReference;

    .line 72
    iget v5, p1, Landroid/widget/TextView$TextFontListener;->mstyle:I

    iput v5, v3, Landroid/app/FontThemeManager$FontListener;->ntype:I

    .line 73
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->isCts()Z

    move-result v5

    if-nez v5, :cond_5

    .line 74
    invoke-static {p0}, Landroid/app/FontThemeManager;->getTextViewFaceType(Landroid/widget/TextView;)I

    move-result v5

    iput v5, v3, Landroid/app/FontThemeManager$FontListener;->typefacetype:I

    .line 76
    :cond_5
    iget-object v5, v1, Landroid/app/FontThemeManager;->FontListeners:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 77
    if-eqz v0, :cond_6

    sget-object v5, Landroid/app/FontThemeManager;->FontManagers:Ljava/util/ArrayList;

    if-eqz v5, :cond_6

    .line 78
    sget-object v5, Landroid/app/FontThemeManager;->FontManagers:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 80
    :cond_6
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v5

    iget v6, v3, Landroid/app/FontThemeManager$FontListener;->typefacetype:I

    invoke-static {v5, v6}, Landroid/app/FontThemeManager;->createThemeFont(Landroid/content/Context;I)Landroid/graphics/Typeface;

    move-result-object v4

    .line 81
    .local v4, "tf":Landroid/graphics/Typeface;
    if-eqz v4, :cond_0

    .line 82
    iget v5, v3, Landroid/app/FontThemeManager$FontListener;->typefacetype:I

    invoke-virtual {p0, v4, v5}, Landroid/widget/TextView;->UpdateThemeFont(Landroid/graphics/Typeface;I)V

    goto/16 :goto_0
.end method


# virtual methods
.method freeFontManager(Landroid/app/FontThemeManager;)V
    .locals 1
    .param p1, "item"    # Landroid/app/FontThemeManager;

    .prologue
    .line 141
    if-eqz p1, :cond_0

    .line 142
    iget-object v0, p1, Landroid/app/FontThemeManager;->FontListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 143
    const/4 v0, 0x0

    iput-object v0, p1, Landroid/app/FontThemeManager;->FontListeners:Ljava/util/ArrayList;

    .line 144
    const/4 p1, 0x0

    .line 146
    :cond_0
    return-void
.end method

.method public freeFontThemeManager()V
    .locals 5

    .prologue
    .line 125
    const-string v2, "FontThemeManager"

    const-string v3, " memory on low now freeFontThemeManager"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    sget-object v2, Landroid/app/FontThemeManager;->FontManagers:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    .line 127
    const-string v2, "FontThemeManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " memory on low now freeFontThemeManager FontManagers.size="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Landroid/app/FontThemeManager;->FontManagers:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    sget-object v2, Landroid/app/FontThemeManager;->FontManagers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ltz v2, :cond_0

    .line 129
    sget-object v2, Landroid/app/FontThemeManager;->FontManagers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 130
    sget-object v2, Landroid/app/FontThemeManager;->FontManagers:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/FontThemeManager;

    .line 131
    .local v1, "item":Landroid/app/FontThemeManager;
    sget-object v2, Landroid/app/FontThemeManager;->FontManagers:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 132
    invoke-virtual {p0, v1}, Landroid/app/FontThemeManager;->freeFontManager(Landroid/app/FontThemeManager;)V

    .line 129
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 135
    .end local v0    # "i":I
    .end local v1    # "item":Landroid/app/FontThemeManager;
    :cond_0
    sget-object v2, Landroid/app/FontThemeManager;->FontManagers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 136
    const/4 v2, 0x0

    sput-object v2, Landroid/app/FontThemeManager;->FontManagers:Ljava/util/ArrayList;

    .line 138
    :cond_1
    return-void
.end method

.method public unRegisterFontListener(Landroid/widget/TextView;)V
    .locals 5
    .param p1, "tv"    # Landroid/widget/TextView;

    .prologue
    .line 97
    invoke-static {}, Landroid/app/FontThemeManager;->getInstance()Landroid/app/FontThemeManager;

    move-result-object v0

    .line 98
    .local v0, "cur":Landroid/app/FontThemeManager;
    if-nez v0, :cond_1

    .line 122
    :cond_0
    :goto_0
    return-void

    .line 102
    :cond_1
    iget-object v4, v0, Landroid/app/FontThemeManager;->FontListeners:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 103
    .local v3, "nsize":I
    add-int/lit8 v1, v3, -0x1

    .local v1, "i":I
    :goto_1
    if-ltz v1, :cond_2

    .line 104
    iget-object v4, v0, Landroid/app/FontThemeManager;->FontListeners:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/FontThemeManager$FontListener;

    .line 105
    .local v2, "listener":Landroid/app/FontThemeManager$FontListener;
    if-eqz v2, :cond_4

    .line 106
    iget-object v4, v2, Landroid/app/FontThemeManager$FontListener;->t:Ljava/lang/ref/SoftReference;

    invoke-virtual {v4}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_4

    iget-object v4, v2, Landroid/app/FontThemeManager$FontListener;->t:Ljava/lang/ref/SoftReference;

    invoke-virtual {v4}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v4

    if-ne p1, v4, :cond_4

    .line 107
    iget-object v4, v0, Landroid/app/FontThemeManager;->FontListeners:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 113
    .end local v2    # "listener":Landroid/app/FontThemeManager$FontListener;
    :cond_2
    iget-object v4, v0, Landroid/app/FontThemeManager;->FontListeners:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_3

    .line 114
    sget-object v4, Landroid/app/FontThemeManager;->FontManagers:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 115
    iget-object v4, v0, Landroid/app/FontThemeManager;->FontListeners:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 118
    :cond_3
    sget-object v4, Landroid/app/FontThemeManager;->FontManagers:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_0

    .line 119
    sget-object v4, Landroid/app/FontThemeManager;->FontManagers:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 120
    const/4 v4, 0x0

    sput-object v4, Landroid/app/FontThemeManager;->FontManagers:Ljava/util/ArrayList;

    goto :goto_0

    .line 103
    .restart local v2    # "listener":Landroid/app/FontThemeManager$FontListener;
    :cond_4
    add-int/lit8 v1, v1, -0x1

    goto :goto_1
.end method

.method public updateFont(Landroid/content/Context;Ljava/lang/String;)V
    .locals 12
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "strPath"    # Ljava/lang/String;

    .prologue
    .line 206
    if-nez p1, :cond_0

    .line 258
    :goto_0
    return-void

    .line 209
    :cond_0
    const-string v9, "FontThemeManager"

    const-string v10, "FontThemeManager updateFont start"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    const-string v9, "FontThemeManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "FontThemeManager updateFont ctx="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    const-string v9, "FontThemeManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "FontThemeManager updateFont strPath="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v6

    .line 214
    .local v6, "pid":I
    sget-object v9, Landroid/app/FontThemeManager;->FontManagers:Ljava/util/ArrayList;

    if-eqz v9, :cond_2

    .line 215
    sget-object v9, Landroid/app/FontThemeManager;->FontManagers:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 216
    .local v5, "nsize":I
    add-int/lit8 v1, v5, -0x1

    .local v1, "i":I
    :goto_1
    if-ltz v1, :cond_2

    .line 217
    sget-object v9, Landroid/app/FontThemeManager;->FontManagers:Ljava/util/ArrayList;

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/FontThemeManager;

    .line 218
    .local v3, "item":Landroid/app/FontThemeManager;
    if-eqz v3, :cond_1

    iget v9, v3, Landroid/app/FontThemeManager;->pid:I

    if-eq v9, v6, :cond_1

    .line 219
    sget-object v9, Landroid/app/FontThemeManager;->FontManagers:Ljava/util/ArrayList;

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 220
    invoke-virtual {p0, v3}, Landroid/app/FontThemeManager;->freeFontManager(Landroid/app/FontThemeManager;)V

    .line 216
    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 227
    .end local v1    # "i":I
    .end local v3    # "item":Landroid/app/FontThemeManager;
    .end local v5    # "nsize":I
    :cond_2
    iget-object v9, p0, Landroid/app/FontThemeManager;->FontListeners:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 228
    .restart local v5    # "nsize":I
    const-string v9, "FontThemeManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "FontThemeManager updateFont nsize="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_2
    if-ge v1, v5, :cond_7

    .line 230
    iget-object v9, p0, Landroid/app/FontThemeManager;->FontListeners:Ljava/util/ArrayList;

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/FontThemeManager$FontListener;

    .line 231
    .local v4, "listener":Landroid/app/FontThemeManager$FontListener;
    if-eqz v4, :cond_3

    .line 232
    const/4 v0, 0x0

    .line 233
    .local v0, "font":Landroid/graphics/Typeface;
    iget v9, v4, Landroid/app/FontThemeManager$FontListener;->typefacetype:I

    invoke-static {p1, v9}, Landroid/app/FontThemeManager;->createThemeFont(Landroid/content/Context;I)Landroid/graphics/Typeface;

    move-result-object v7

    .line 234
    .local v7, "tf":Landroid/graphics/Typeface;
    const-string v9, "FontThemeManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "FontThemeManager updateFont listener.typefacetype="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, v4, Landroid/app/FontThemeManager$FontListener;->typefacetype:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    iget v9, v4, Landroid/app/FontThemeManager$FontListener;->ntype:I

    if-lez v9, :cond_4

    .line 236
    iget v9, v4, Landroid/app/FontThemeManager$FontListener;->ntype:I

    invoke-static {v7, v9}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v0

    .line 245
    :goto_3
    if-eqz v0, :cond_3

    .line 246
    iget-object v9, v4, Landroid/app/FontThemeManager$FontListener;->t:Ljava/lang/ref/SoftReference;

    invoke-virtual {v9}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 247
    .local v8, "tv":Landroid/widget/TextView;
    if-eqz v8, :cond_3

    .line 248
    invoke-virtual {v8}, Landroid/widget/TextView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v2

    .line 249
    .local v2, "impl":Landroid/view/ViewRootImpl;
    if-eqz v2, :cond_3

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Landroid/view/ViewRootImpl;->isSameThread()Z

    move-result v9

    if-nez v9, :cond_6

    .line 229
    .end local v0    # "font":Landroid/graphics/Typeface;
    .end local v2    # "impl":Landroid/view/ViewRootImpl;
    .end local v7    # "tf":Landroid/graphics/Typeface;
    .end local v8    # "tv":Landroid/widget/TextView;
    :cond_3
    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 238
    .restart local v0    # "font":Landroid/graphics/Typeface;
    .restart local v7    # "tf":Landroid/graphics/Typeface;
    :cond_4
    iget v9, v4, Landroid/app/FontThemeManager$FontListener;->typefacetype:I

    if-nez v9, :cond_5

    .line 239
    const/4 v9, 0x0

    invoke-static {v7, v9}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v0

    goto :goto_3

    .line 241
    :cond_5
    move-object v0, v7

    goto :goto_3

    .line 252
    .restart local v2    # "impl":Landroid/view/ViewRootImpl;
    .restart local v8    # "tv":Landroid/widget/TextView;
    :cond_6
    iget v9, v4, Landroid/app/FontThemeManager$FontListener;->typefacetype:I

    invoke-virtual {v8, v0, v9}, Landroid/widget/TextView;->UpdateThemeFont(Landroid/graphics/Typeface;I)V

    goto :goto_4

    .line 257
    .end local v0    # "font":Landroid/graphics/Typeface;
    .end local v2    # "impl":Landroid/view/ViewRootImpl;
    .end local v4    # "listener":Landroid/app/FontThemeManager$FontListener;
    .end local v7    # "tf":Landroid/graphics/Typeface;
    .end local v8    # "tv":Landroid/widget/TextView;
    :cond_7
    const-string v9, "FontThemeManager"

    const-string v10, "FontThemeManager updateFont end"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method
