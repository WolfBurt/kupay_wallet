<div class="ga-new-page" ev-back-click="backPrePage" style="background-color: #fff;">
    <app-components-topBar-topBar>{title:"排名"}</app-components-topBar-topBar>
    <div style="height: 10px;background: #F8F8F8"></div>

    <div style="height: 100%;margin-bottom: 128px;overflow-x: hidden;overflow-y: auto;">
        <div style="line-height: 100px;border-bottom: 1px solid #e5e5ee;display: flex">
            <div w-class="title">矿山排名</div>
            <span w-class="more" on-tap="gotoMore(1)">全部<img src="../../../res/image/btn_right_arrow.png" w-class="moreImg"/></span>
        </div>
    
        <div w-class="rank">
            {{if it1.mineSecond}}
            <div w-class="rankSecond">
                <img src="../../../res/image/mining_rank_two.png" style="width: 100px;height: 100px;border-radius: 50%;background: #E1E1E1"/>
                <div w-class="rankName">{{it1.mineRank[1].name}}</div>
                <div w-class="rankNum">{{it1.mineRank[1].num}}</div>
                <div style="width: 190px;height: 160px;background: #E1E1E1"></div>
            </div>
            {{end}}
    
            <div w-class="rankFirst">
                <img src="../../../res/image/mining_rank_one.png" style="width: 100px;height: 100px;border-radius: 50%;background: #FFCE49"/>
                <div w-class="rankName" style="width: auto">{{it1.mineRank[0].name}}</div>
                <div w-class="rankNum">{{it1.mineRank[0].num}}</div>
                <div style="width: 190px;height: 280px;background: #FFCE49"></div>
            </div>
    
            {{if it1.mineThird}}
            <div w-class="rankThree">
                <img src="../../../res/image/mining_rank_three.png" style="width: 100px;height: 100px;border-radius: 50%;background: #CDA257"/>
                <div w-class="rankName">{{it1.mineRank[2].name}}</div>
                <div w-class="rankNum">{{it1.mineRank[2].num}}</div>
                <div style="width: 190px;height: 110px;background: #CDA257"></div>
            </div>
            {{end}}
        </div>
    
        <div w-class="rankItem" style="color: #A0ACC0;">
            <span style="margin-left: 50px;">排名</span>
            <span style="margin-left: 67px;">昵称</span>
            <span style="float: right;margin-right: 30px;">矿山总量(KT)</span>        
        </div>
    
        {{for ind,val of it1.mineRank}}
        <div w-class="rankItem" style="color: #666666;">
            <span style="margin-left: 50px;color: #111111;font-size: 28px;font-weight: 600;">{{val.index}}</span>
            <span style="margin-left: 67px;">{{val.name}}</span>
            <span style="float: right;margin-right: 30px;font-size: 28px;font-weight: 600;">{{val.num}}</span>        
        </div>
        {{end}}
        <div w-class="moreRank" on-tap="getMore(1)" style="display: {{it1.mineMore?'block':'none'}}">更多</div>

        {{% 挖矿排名}}
        {{if it1.miningFirst}}
        <div style="height: 20px;background: #f8f8f8;"></div>

        <div style="line-height: 100px;border-bottom: 1px solid #e5e5ee;display: flex;">
            <div w-class="title">挖矿排名</div>
            <span w-class="more" on-tap="gotoMore(2)">全部<img src="../../../res/image/btn_right_arrow.png" w-class="moreImg"/></span>
        </div>
        <div w-class="rank">
            {{if it1.miningSecond}}
            <div w-class="rankSecond">
                <img src="../../../res/image/mining_rank_two.png" style="width: 100px;height: 100px;border-radius: 50%;background: #E1E1E1"/>
                <div w-class="rankName">{{it1.miningRank[1].name}}</div>
                <div w-class="rankNum">{{it1.miningRank[1].num}}</div>
                <div style="width: 190px;height: 160px;background: #E1E1E1"></div>
            </div>
            {{end}}
    
            <div w-class="rankFirst">
                <img src="../../../res/image/mining_rank_one.png" style="width: 100px;height: 100px;border-radius: 50%;background: #FFCE49"/>
                <div w-class="rankName" style="width: auto">{{it1.miningRank[0].name}}</div>
                <div w-class="rankNum">{{it1.miningRank[0].num}}</div>
                <div style="width: 190px;height: 280px;background: #FFCE49"></div>
            </div>
    
            {{if it1.miningThird}}
            <div w-class="rankThree">
                <img src="../../../res/image/mining_rank_three.png" style="width: 100px;height: 100px;border-radius: 50%;background: #CDA257"/>
                <div w-class="rankName">{{it1.miningRank[2].name}}</div>
                <div w-class="rankNum">{{it1.miningRank[2].num}}</div>
                <div style="width: 190px;height: 110px;background: #CDA257"></div>
            </div>
            {{end}}
        </div>

        <div w-class="rankItem" style="color: #A0ACC0;">
            <span style="margin-left: 50px;">排名</span>
            <span style="margin-left: 67px;">昵称</span>
            <span style="float: right;margin-right: 30px;">挖矿总量(KT)</span>        
        </div>
    
        {{for ind,val of it1.miningRank}}
        <div w-class="rankItem" style="color: #666666;">
            <span style="margin-left: 50px;color: #111111;font-size: 28px;font-weight: 600;">{{val.index}}</span>
            <span style="margin-left: 67px;">{{val.name}}</span>
            <span style="float: right;margin-right: 30px;font-size: 28px;font-weight: 600;">{{val.num}}</span>        
        </div>
        {{end}}
        <div w-class="moreRank" on-tap="getMore(2)" style="display: {{it1.miningMore?'block':'none'}}">更多</div>
        <div style="height: 20px;background: #f8f8f8;"></div>
        {{end}}

        <div style="height: 128px;"></div>
    </div>
</div>