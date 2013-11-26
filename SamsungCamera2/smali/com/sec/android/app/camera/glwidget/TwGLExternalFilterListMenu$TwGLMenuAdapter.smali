.class Lcom/sec/android/app/camera/glwidget/TwGLExternalFilterListMenu$TwGLMenuAdapter;
.super Ljava/lang/Object;
.source "TwGLExternalFilterListMenu.java"

# interfaces
.implements Lcom/sec/android/glview/TwGLList$Adapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/glwidget/TwGLExternalFilterListMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TwGLMenuAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/glwidget/TwGLExternalFilterListMenu;


# direct methods
.method private constructor <init>(Lcom/sec/android/app/camera/glwidget/TwGLExternalFilterListMenu;)V
    .locals 0

    .prologue
    .line 110
    iput-object p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLExternalFilterListMenu$TwGLMenuAdapter;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLExternalFilterListMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/app/camera/glwidget/TwGLExternalFilterListMenu;Lcom/sec/android/app/camera/glwidget/TwGLExternalFilterListMenu$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 110
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/glwidget/TwGLExternalFilterListMenu$TwGLMenuAdapter;-><init>(Lcom/sec/android/app/camera/glwidget/TwGLExternalFilterListMenu;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLExternalFilterListMenu$TwGLMenuAdapter;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLExternalFilterListMenu;

    #getter for: Lcom/sec/android/app/camera/glwidget/TwGLExternalFilterListMenu;->mResource:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    invoke-static {v0}, Lcom/sec/android/app/camera/glwidget/TwGLExternalFilterListMenu;->access$100(Lcom/sec/android/app/camera/glwidget/TwGLExternalFilterListMenu;)Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;->getNumberOfItems()I

    move-result v0

    return v0
.end method

.method public getView(ILcom/sec/android/glview/TwGLView;)Lcom/sec/android/glview/TwGLView;
    .locals 10
    .parameter "position"
    .parameter "convertView"

    .prologue
    const/4 v8, 0x4

    const/4 v9, 0x1

    const/4 v2, 0x0

    .line 116
    if-nez p2, :cond_1

    .line 117
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLExternalFilterListMenu$TwGLMenuAdapter;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLExternalFilterListMenu;

    #getter for: Lcom/sec/android/app/camera/glwidget/TwGLExternalFilterListMenu;->mResource:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    invoke-static {v1}, Lcom/sec/android/app/camera/glwidget/TwGLExternalFilterListMenu;->access$100(Lcom/sec/android/app/camera/glwidget/TwGLExternalFilterListMenu;)Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;->getItem(I)Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    move-result-object v6

    .line 118
    .local v6, itemData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;
    invoke-virtual {v6, v8}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getItem(I)I

    move-result v1

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLExternalFilterListMenu$TwGLMenuAdapter;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLExternalFilterListMenu;

    #getter for: Lcom/sec/android/app/camera/glwidget/TwGLExternalFilterListMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;
    invoke-static {v3}, Lcom/sec/android/app/camera/glwidget/TwGLExternalFilterListMenu;->access$200(Lcom/sec/android/app/camera/glwidget/TwGLExternalFilterListMenu;)Lcom/sec/android/app/camera/Camera;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLExternalFilterListMenu$TwGLMenuAdapter;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLExternalFilterListMenu;

    #getter for: Lcom/sec/android/app/camera/glwidget/TwGLExternalFilterListMenu;->mGLParentView:Lcom/sec/android/glview/TwGLViewGroup;
    invoke-static {v4}, Lcom/sec/android/app/camera/glwidget/TwGLExternalFilterListMenu;->access$300(Lcom/sec/android/app/camera/glwidget/TwGLExternalFilterListMenu;)Lcom/sec/android/glview/TwGLViewGroup;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLExternalFilterListMenu$TwGLMenuAdapter;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLExternalFilterListMenu;

    #getter for: Lcom/sec/android/app/camera/glwidget/TwGLExternalFilterListMenu;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;
    invoke-static {v5}, Lcom/sec/android/app/camera/glwidget/TwGLExternalFilterListMenu;->access$400(Lcom/sec/android/app/camera/glwidget/TwGLExternalFilterListMenu;)Lcom/sec/android/app/camera/MenuResourceDepot;

    move-result-object v5

    invoke-static {v1, v3, v4, v5}, Lcom/sec/android/app/camera/command/CommandBuilder;->buildCommand(ILcom/sec/android/app/camera/Camera;Lcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;)Lcom/sec/android/app/camera/command/MenuCommand;

    move-result-object v7

    .line 119
    .local v7, command:Lcom/sec/android/app/camera/command/MenuCommand;
    if-eqz v7, :cond_0

    .line 120
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLExternalFilterListMenu$TwGLMenuAdapter;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLExternalFilterListMenu;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/MenuBase;->getZorder()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v7, v1}, Lcom/sec/android/app/camera/command/MenuCommand;->setZOrder(I)V

    .line 121
    new-instance v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLExternalFilterListMenu$TwGLMenuAdapter;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLExternalFilterListMenu;

    #getter for: Lcom/sec/android/app/camera/glwidget/TwGLExternalFilterListMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;
    invoke-static {v1}, Lcom/sec/android/app/camera/glwidget/TwGLExternalFilterListMenu;->access$500(Lcom/sec/android/app/camera/glwidget/TwGLExternalFilterListMenu;)Lcom/sec/android/app/camera/Camera;

    move-result-object v1

    invoke-static {}, Lcom/sec/android/app/camera/glwidget/TwGLExternalFilterListMenu;->access$600()I

    move-result v3

    int-to-float v4, v3

    invoke-static {}, Lcom/sec/android/app/camera/glwidget/TwGLExternalFilterListMenu;->access$700()I

    move-result v3

    int-to-float v5, v3

    move v3, v2

    invoke-direct/range {v0 .. v8}, Lcom/sec/android/app/camera/glwidget/TwGLItem;-><init>(Lcom/sec/android/app/camera/Camera;FFFFLcom/sec/android/app/camera/resourcedata/MenuResourceBundle;Lcom/sec/android/app/camera/command/MenuCommand;I)V

    .line 122
    .local v0, item:Lcom/sec/android/app/camera/glwidget/TwGLItem;
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLExternalFilterListMenu$TwGLMenuAdapter;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLExternalFilterListMenu;

    #getter for: Lcom/sec/android/app/camera/glwidget/TwGLExternalFilterListMenu;->mMute:Z
    invoke-static {v1}, Lcom/sec/android/app/camera/glwidget/TwGLExternalFilterListMenu;->access$800(Lcom/sec/android/app/camera/glwidget/TwGLExternalFilterListMenu;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->setMute(Z)V

    .line 123
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLExternalFilterListMenu$TwGLMenuAdapter;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLExternalFilterListMenu;

    #getter for: Lcom/sec/android/app/camera/glwidget/TwGLExternalFilterListMenu;->mList:Lcom/sec/android/glview/TwGLList;
    invoke-static {v1}, Lcom/sec/android/app/camera/glwidget/TwGLExternalFilterListMenu;->access$900(Lcom/sec/android/app/camera/glwidget/TwGLExternalFilterListMenu;)Lcom/sec/android/glview/TwGLList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->setOnTouchListener(Lcom/sec/android/glview/TwGLView$OnTouchListener;)V

    .line 124
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLExternalFilterListMenu$TwGLMenuAdapter;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLExternalFilterListMenu;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/MenuBase;->getZorder()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->setZOrder(I)V

    .line 136
    .end local v0           #item:Lcom/sec/android/app/camera/glwidget/TwGLItem;
    .end local v6           #itemData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;
    .end local v7           #command:Lcom/sec/android/app/camera/command/MenuCommand;
    :goto_0
    return-object v0

    .line 127
    .restart local v6       #itemData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;
    .restart local v7       #command:Lcom/sec/android/app/camera/command/MenuCommand;
    :cond_0
    new-instance v0, Lcom/sec/android/app/camera/glwidget/TwGLItemEmptyThumbnailButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLExternalFilterListMenu$TwGLMenuAdapter;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLExternalFilterListMenu;

    #getter for: Lcom/sec/android/app/camera/glwidget/TwGLExternalFilterListMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;
    invoke-static {v1}, Lcom/sec/android/app/camera/glwidget/TwGLExternalFilterListMenu;->access$1000(Lcom/sec/android/app/camera/glwidget/TwGLExternalFilterListMenu;)Lcom/sec/android/app/camera/Camera;

    move-result-object v1

    invoke-virtual {v6, v8}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getItem(I)I

    move-result v3

    invoke-direct {v0, v1, v2, v2, v3}, Lcom/sec/android/app/camera/glwidget/TwGLItemEmptyThumbnailButton;-><init>(Lcom/sec/android/app/camera/Camera;FFI)V

    .line 128
    .local v0, item:Lcom/sec/android/app/camera/glwidget/TwGLItemEmptyThumbnailButton;
    invoke-virtual {v0, v9}, Lcom/sec/android/app/camera/glwidget/TwGLItemEmptyThumbnailButton;->setMute(Z)V

    .line 129
    invoke-virtual {v0, v9}, Lcom/sec/android/glview/TwGLView;->setRotatable(Z)V

    .line 130
    invoke-virtual {v0, v9}, Lcom/sec/android/glview/TwGLView;->setCenterPivot(Z)V

    .line 131
    invoke-static {}, Lcom/sec/android/app/camera/glwidget/TwGLExternalFilterListMenu;->access$1100()I

    move-result v1

    const/4 v2, 0x0

    invoke-static {}, Lcom/sec/android/app/camera/glwidget/TwGLExternalFilterListMenu;->access$1100()I

    move-result v3

    invoke-static {}, Lcom/sec/android/app/camera/glwidget/TwGLExternalFilterListMenu;->access$1100()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sec/android/app/camera/glwidget/TwGLItemEmptyThumbnailButton;->setMargin(IIII)V

    .line 132
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLExternalFilterListMenu$TwGLMenuAdapter;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLExternalFilterListMenu;

    #getter for: Lcom/sec/android/app/camera/glwidget/TwGLExternalFilterListMenu;->mList:Lcom/sec/android/glview/TwGLList;
    invoke-static {v1}, Lcom/sec/android/app/camera/glwidget/TwGLExternalFilterListMenu;->access$900(Lcom/sec/android/app/camera/glwidget/TwGLExternalFilterListMenu;)Lcom/sec/android/glview/TwGLList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setOnTouchListener(Lcom/sec/android/glview/TwGLView$OnTouchListener;)V

    goto :goto_0

    .end local v0           #item:Lcom/sec/android/app/camera/glwidget/TwGLItemEmptyThumbnailButton;
    .end local v6           #itemData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;
    .end local v7           #command:Lcom/sec/android/app/camera/command/MenuCommand;
    :cond_1
    move-object v0, p2

    .line 136
    goto :goto_0
.end method

.method public reset()V
    .locals 0

    .prologue
    .line 141
    return-void
.end method
