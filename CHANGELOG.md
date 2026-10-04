# Gargul

## [v8.0.0](https://github.com/papa-smurf/Gargul/tree/v8.0.0) (2026-09-12)
[Full Changelog](https://github.com/papa-smurf/Gargul/compare/v7.8.2...v8.0.0) [Previous Releases](https://github.com/papa-smurf/Gargul/releases)

- Version v8.0.0  
    Everyone in your raid needs 8.0.0. Gargul now sends far less data to your group:  
    wishlist (TMB) data, awarded loot, roll starts and GDKP bids all sync much  
    faster, with far fewer dropped messages in a full raid. That meant changing how  
    Gargul talks to other players, so 7.x can no longer read your messages.  
- Trivial: optimized the table get helper  
- Fix: removed unnecessary boosted roll broadcast  
- Further optimized comm sizes for GDKP multi auctions (not backwards compatible)  
- Greatly reduced comm sizes for awarded loot data sharing (not backwards compatible)  
- Greatly reduced comm sizes for TMB data sharing (not backwards compatible)  
- Fixed an issue with +1 not being updated properly after an incoming broadcast  
- Greatly reduced comm sizes for roll starts, especially when using boosted rolls (not backwards compatible)  
- Trivial: updated lua linting and validation  
- Optimized GDKP session continuance and fixed issues with fractional (copper/silver) bids  
- Greatly reduced comm sizes for GDKP multi auctions (not backwards compatible)  
- - Fixed an issue where hitting "Finish" on a multi-auction would not stop the auction for other players correctly  
    - Enabled awarded loot sharing for multi-auctions, which the previous performance improvements now make possible  
- Fixed issues around awarded items not being shared properly. This change is not backwards compatible and will require a new major version!  
- Hardened the Softres auto name fix implementation  
- Improve Hardreserve details on item tooltips  
